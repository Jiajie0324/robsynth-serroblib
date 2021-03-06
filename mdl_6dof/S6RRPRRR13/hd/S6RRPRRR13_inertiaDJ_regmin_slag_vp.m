% Calculate minimal parameter regressor of joint inertia matrix time derivative for
% S6RRPRRR13
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,d6]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x35]
%   minimal parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 14:56
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRPRRR13_inertiaDJ_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR13_inertiaDJ_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRR13_inertiaDJ_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRRR13_inertiaDJ_regmin_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 14:53:19
% EndTime: 2019-03-09 14:53:30
% DurationCPUTime: 3.68s
% Computational Cost: add. (4218->379), mult. (11155->682), div. (0->0), fcn. (10661->10), ass. (0->202)
t154 = sin(qJ(6));
t155 = sin(qJ(5));
t158 = cos(qJ(6));
t159 = cos(qJ(5));
t226 = t158 * t159;
t117 = t154 * t155 - t226;
t156 = sin(qJ(4));
t100 = t117 * t156;
t118 = t154 * t159 + t155 * t158;
t160 = cos(qJ(4));
t99 = t118 * t160;
t172 = pkin(4) * t156 - pkin(10) * t160;
t120 = qJ(3) + t172;
t162 = -pkin(2) - pkin(9);
t227 = t156 * t162;
t135 = t159 * t227;
t90 = t155 * t120 + t135;
t157 = sin(qJ(2));
t153 = cos(pkin(6));
t246 = pkin(1) * t153;
t141 = t157 * t246;
t152 = sin(pkin(6));
t161 = cos(qJ(2));
t232 = t152 * t161;
t252 = pkin(8) * t232 + t141;
t211 = qJD(5) * t160;
t186 = t155 * t211;
t215 = qJD(4) * t159;
t190 = t156 * t215;
t107 = -t186 - t190;
t150 = t159 ^ 2;
t223 = t155 ^ 2 - t150;
t177 = t223 * qJD(5);
t251 = qJD(5) + qJD(6);
t250 = 0.2e1 * t152;
t249 = 2 * qJD(3);
t248 = pkin(3) + pkin(8);
t247 = pkin(10) + pkin(11);
t104 = t153 * t156 + t160 * t232;
t245 = pkin(5) * t104;
t244 = pkin(5) * t158;
t233 = t152 * t157;
t138 = pkin(8) * t233;
t200 = -pkin(1) * t161 - pkin(2);
t70 = pkin(3) * t233 + t138 + (-pkin(9) + t200) * t153;
t237 = qJ(3) * t157;
t82 = (t162 * t161 - pkin(1) - t237) * t152;
t243 = t156 * t70 + t160 * t82;
t38 = pkin(10) * t233 + t243;
t203 = t156 * t232;
t105 = t153 * t160 - t203;
t93 = -t153 * qJ(3) - t252;
t81 = pkin(3) * t232 - t93;
t48 = pkin(4) * t104 - pkin(10) * t105 + t81;
t24 = t155 * t48 + t159 * t38;
t74 = t251 * t118;
t242 = t156 * t74;
t165 = -t105 * t155 + t159 * t233;
t19 = pkin(11) * t165 + t24;
t241 = t158 * t19;
t229 = t155 * t160;
t76 = -pkin(11) * t229 + t90;
t240 = t158 * t76;
t219 = qJD(2) * t161;
t137 = t152 * t219;
t220 = qJD(2) * t157;
t183 = t152 * t220;
t217 = qJD(4) * t104;
t77 = t156 * t183 - t217;
t35 = t165 * qJD(5) + t155 * t137 + t77 * t159;
t239 = t35 * t155;
t97 = t252 * qJD(2);
t238 = t97 * t153;
t236 = qJD(4) * t165;
t80 = t105 * t159 + t155 * t233;
t235 = qJD(4) * t80;
t130 = t247 * t155;
t234 = t130 * t154;
t228 = t155 * t162;
t225 = t159 * t160;
t224 = t160 * t162;
t149 = t156 ^ 2;
t151 = t160 ^ 2;
t222 = t149 - t151;
t221 = t149 + t151;
t218 = qJD(3) * t157;
t216 = qJD(4) * t156;
t146 = qJD(4) * t160;
t214 = qJD(4) * t162;
t213 = qJD(5) * t155;
t212 = qJD(5) * t159;
t210 = qJD(5) * t162;
t209 = qJD(6) * t154;
t208 = qJD(6) * t158;
t207 = -0.2e1 * pkin(4) * qJD(5);
t206 = pkin(5) * t213;
t205 = pkin(5) * t209;
t204 = pkin(5) * t208;
t202 = t162 * t233;
t201 = t155 * t227;
t78 = -qJD(4) * t203 + t153 * t146 - t160 * t183;
t134 = t219 * t246;
t144 = t153 * qJD(3);
t69 = -t248 * t183 + t134 + t144;
t163 = t78 * pkin(4) - t77 * pkin(10) + t69;
t133 = pkin(2) * t183;
t65 = t133 + (-t218 + (pkin(9) * t157 - qJ(3) * t161) * qJD(2)) * t152;
t83 = (t248 * t232 + t141) * qJD(2);
t25 = -t70 * t146 - t156 * t83 - t160 * t65 + t82 * t216;
t21 = pkin(10) * t137 - t25;
t9 = -t24 * qJD(5) - t155 * t21 + t159 * t163;
t5 = t78 * pkin(5) - t35 * pkin(11) + t9;
t34 = qJD(5) * t80 - t159 * t137 + t77 * t155;
t8 = -t155 * t163 - t159 * t21 - t48 * t212 + t38 * t213;
t7 = -pkin(11) * t34 - t8;
t199 = -t154 * t7 + t158 * t5;
t147 = t152 ^ 2;
t197 = t147 * t219;
t196 = t155 * t217;
t195 = t104 * t215;
t194 = t117 * t216;
t193 = t118 * t146;
t192 = t155 * t216;
t191 = t155 * t146;
t189 = t156 * t214;
t188 = t159 * t146;
t187 = t160 * t214;
t185 = t155 * t210;
t184 = t159 * t211;
t182 = t155 * t212;
t181 = t156 * t146;
t180 = pkin(5) - t228;
t173 = pkin(4) * t160 + pkin(10) * t156;
t164 = t173 * qJD(4) + qJD(3);
t103 = t159 * t164;
t36 = t103 + (-t135 + (pkin(11) * t160 - t120) * t155) * qJD(5) + (pkin(11) * t156 * t159 + t180 * t160) * qJD(4);
t109 = -t184 + t192;
t56 = -t120 * t212 - t155 * t164 + t156 * t185 - t159 * t187;
t42 = t109 * pkin(11) - t56;
t179 = -t154 * t42 + t158 * t36;
t23 = -t155 * t38 + t159 * t48;
t178 = -t156 * t82 + t160 * t70;
t176 = t222 * qJD(4);
t175 = t162 * t137;
t174 = t155 * t190;
t171 = -pkin(2) * t161 - t237;
t18 = -pkin(11) * t80 + t23 + t245;
t11 = t154 * t18 + t241;
t115 = t159 * t120;
t66 = -pkin(11) * t225 + t180 * t156 + t115;
t41 = t154 * t66 + t240;
t46 = t154 * t80 - t158 * t165;
t47 = t154 * t165 + t158 * t80;
t170 = t155 * t80 - t159 * t165;
t26 = -t82 * t146 - t156 * t65 + t160 * t83 - t70 * t216;
t131 = t247 * t159;
t86 = t131 * t158 - t234;
t96 = pkin(8) * t183 - t134;
t1 = -t154 * t5 - t158 * t7 - t18 * t208 + t19 * t209;
t22 = -pkin(4) * t137 - t26;
t37 = -pkin(4) * t233 - t178;
t169 = t22 * t155 + t37 * t212;
t168 = -t22 * t159 + t37 * t213;
t167 = t104 * t212 + t155 * t78;
t166 = t104 * t213 - t159 * t78;
t14 = -t154 * t36 - t158 * t42 - t66 * t208 + t76 * t209;
t143 = -pkin(5) * t159 - pkin(4);
t136 = 0.2e1 * t181;
t119 = 0.2e1 * t157 * t197;
t116 = (pkin(5) * t155 - t162) * t160;
t108 = t156 * t212 + t191;
t106 = t156 * t213 - t188;
t101 = t117 * t160;
t98 = t118 * t156;
t95 = t200 * t153 + t138;
t94 = (-pkin(1) + t171) * t152;
t92 = (-t157 * t216 + t160 * t219) * t152;
t91 = (-t157 * t146 - t156 * t219) * t152;
t89 = t115 - t201;
t88 = -t144 + t96;
t87 = -t109 * pkin(5) + t189;
t85 = -t130 * t158 - t131 * t154;
t84 = t133 + (-qJ(3) * t219 - t218) * t152;
t73 = t251 * t117;
t58 = 0.2e1 * t104 * t78;
t57 = -t90 * qJD(5) - t155 * t187 + t103;
t55 = t104 * t146 + t156 * t78;
t54 = -t86 * qJD(6) + (-t247 * t226 + t234) * qJD(5);
t53 = t118 * qJD(5) * t247 + t130 * t208 + t131 * t209;
t52 = -t209 * t229 + (t251 * t225 - t192) * t158 + t107 * t154;
t51 = t251 * t100 - t193;
t50 = -t251 * t99 + t194;
t49 = t154 * t191 - t158 * t188 + t242;
t40 = -t154 * t76 + t158 * t66;
t27 = -pkin(5) * t165 + t37;
t16 = pkin(5) * t34 + t22;
t15 = -t41 * qJD(6) + t179;
t13 = t47 * qJD(6) + t154 * t35 + t158 * t34;
t12 = -t46 * qJD(6) - t154 * t34 + t158 * t35;
t10 = -t154 * t19 + t158 * t18;
t2 = -t11 * qJD(6) + t199;
t3 = [0, 0, 0, t119, 0.2e1 * (-t157 ^ 2 + t161 ^ 2) * t147 * qJD(2), 0.2e1 * t153 * t137, -0.2e1 * t153 * t183, 0, -0.2e1 * pkin(1) * t147 * t220 - 0.2e1 * t238, -0.2e1 * pkin(1) * t197 + 0.2e1 * t153 * t96 (t157 * t97 - t161 * t88 + (t157 * t93 + t161 * t95) * qJD(2)) * t250, 0.2e1 * t238 + 0.2e1 * (t161 * t84 - t94 * t220) * t152, -0.2e1 * t88 * t153 + 0.2e1 * (-t157 * t84 - t94 * t219) * t152, 0.2e1 * t84 * t94 + 0.2e1 * t88 * t93 + 0.2e1 * t95 * t97, 0.2e1 * t105 * t77, -0.2e1 * t104 * t77 - 0.2e1 * t105 * t78 (t105 * t219 + t157 * t77) * t250 (-t104 * t219 - t157 * t78) * t250, t119, 0.2e1 * t69 * t104 + 0.2e1 * t81 * t78 + 0.2e1 * (t26 * t157 + t178 * t219) * t152, 0.2e1 * t69 * t105 + 0.2e1 * t81 * t77 + 0.2e1 * (t25 * t157 - t243 * t219) * t152, 0.2e1 * t80 * t35, 0.2e1 * t165 * t35 - 0.2e1 * t34 * t80, 0.2e1 * t104 * t35 + 0.2e1 * t78 * t80, -0.2e1 * t104 * t34 + 0.2e1 * t165 * t78, t58, 0.2e1 * t104 * t9 - 0.2e1 * t165 * t22 + 0.2e1 * t23 * t78 + 0.2e1 * t34 * t37, 0.2e1 * t104 * t8 + 0.2e1 * t22 * t80 - 0.2e1 * t24 * t78 + 0.2e1 * t35 * t37, 0.2e1 * t47 * t12, -0.2e1 * t12 * t46 - 0.2e1 * t13 * t47, 0.2e1 * t104 * t12 + 0.2e1 * t47 * t78, -0.2e1 * t104 * t13 - 0.2e1 * t46 * t78, t58, 0.2e1 * t10 * t78 + 0.2e1 * t104 * t2 + 0.2e1 * t13 * t27 + 0.2e1 * t16 * t46, 0.2e1 * t1 * t104 - 0.2e1 * t11 * t78 + 0.2e1 * t12 * t27 + 0.2e1 * t16 * t47; 0, 0, 0, 0, 0, t137, -t183, 0, -t97, t96 (t171 * qJD(2) + qJD(3) * t161) * t152, t97, 0.2e1 * t144 - t96, -pkin(2) * t97 - qJ(3) * t88 - qJD(3) * t93, -t105 * t216 + t160 * t77, -t77 * t156 - t160 * t78 + (t104 * t156 - t105 * t160) * qJD(4), t92, t91, 0, t160 * t175 + qJ(3) * t78 + qJD(3) * t104 + t69 * t156 + (-t156 * t202 + t160 * t81) * qJD(4), -t156 * t175 + qJ(3) * t77 + qJD(3) * t105 + t69 * t160 + (-t156 * t81 - t160 * t202) * qJD(4), -t80 * t186 + (t160 * t35 - t80 * t216) * t159, t170 * t216 + (-t239 - t159 * t34 + (-t155 * t165 - t159 * t80) * qJD(5)) * t160 (t35 - t195) * t156 + (-t166 + t235) * t160 (-t34 + t196) * t156 + (-t167 + t236) * t160, t55, t57 * t104 + t89 * t78 + (t9 + (-t155 * t37 - t162 * t165) * qJD(4)) * t156 + (qJD(4) * t23 - t162 * t34 + t169) * t160, t56 * t104 - t90 * t78 + (t8 + (-t159 * t37 + t162 * t80) * qJD(4)) * t156 + (-qJD(4) * t24 - t162 * t35 - t168) * t160, -t101 * t12 + t47 * t50, t101 * t13 - t12 * t99 - t46 * t50 - t47 * t52, -t101 * t78 + t104 * t50 + t12 * t156 + t146 * t47, -t104 * t52 - t13 * t156 - t146 * t46 - t78 * t99, t55, t10 * t146 + t104 * t15 + t116 * t13 + t156 * t2 + t16 * t99 + t27 * t52 + t40 * t78 + t46 * t87, t1 * t156 - t101 * t16 + t104 * t14 - t11 * t146 + t116 * t12 + t27 * t50 - t41 * t78 + t47 * t87; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t249, qJ(3) * t249, -0.2e1 * t181, 0.2e1 * t176, 0, 0, 0, 0.2e1 * qJ(3) * t146 + 0.2e1 * qJD(3) * t156, -0.2e1 * qJ(3) * t216 + 0.2e1 * qJD(3) * t160, -0.2e1 * t150 * t181 - 0.2e1 * t151 * t182, 0.2e1 * t151 * t177 + 0.4e1 * t160 * t174, -0.2e1 * t156 * t186 - 0.2e1 * t215 * t222, 0.2e1 * t155 * t176 - 0.2e1 * t156 * t184, t136, -0.2e1 * t151 * t159 * t210 + 0.2e1 * t57 * t156 + 0.2e1 * (t89 + 0.2e1 * t201) * t146, 0.2e1 * t151 * t185 + 0.2e1 * t56 * t156 + 0.2e1 * (-t90 + 0.2e1 * t135) * t146, -0.2e1 * t101 * t50, 0.2e1 * t101 * t52 - 0.2e1 * t50 * t99, -0.2e1 * t101 * t146 + 0.2e1 * t156 * t50, -0.2e1 * t146 * t99 - 0.2e1 * t156 * t52, t136, 0.2e1 * t116 * t52 + 0.2e1 * t146 * t40 + 0.2e1 * t15 * t156 + 0.2e1 * t87 * t99, -0.2e1 * t101 * t87 + 0.2e1 * t116 * t50 + 0.2e1 * t14 * t156 - 0.2e1 * t146 * t41; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t137, 0, 0, t97, 0, 0, 0, 0, 0, t92, t91, 0, 0, 0, 0, 0 (-t34 - t196) * t160 + (-t167 - t236) * t156 (-t35 - t195) * t160 + (t166 + t235) * t156, 0, 0, 0, 0, 0, t104 * t51 - t13 * t160 + t216 * t46 - t78 * t98, t100 * t78 + t104 * t49 - t12 * t160 + t216 * t47; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t221 * t212, t221 * t213, 0, 0, 0, 0, 0, t51 * t156 - t160 * t52 + (t156 * t99 - t160 * t98) * qJD(4), t49 * t156 - t160 * t50 + (t100 * t160 - t101 * t156) * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t77, -t78, t137, t26, t25, t80 * t212 + t239, -qJD(5) * t170 - t155 * t34 + t35 * t159, t167, -t166, 0, -pkin(4) * t34 - pkin(10) * t167 + t168, -pkin(4) * t35 + pkin(10) * t166 + t169, t118 * t12 - t47 * t73, -t117 * t12 - t118 * t13 + t46 * t73 - t47 * t74, -t104 * t73 + t118 * t78, -t104 * t74 - t117 * t78, 0, t104 * t54 + t117 * t16 + t13 * t143 + t206 * t46 + t27 * t74 + t78 * t85, t104 * t53 + t118 * t16 + t12 * t143 + t206 * t47 - t27 * t73 - t78 * t86; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t216, -t146, 0, -t189, -t187, -t160 * t177 - t174, -0.4e1 * t160 * t182 + t216 * t223, t108, -t106, 0 (-t155 * t224 - t159 * t173) * qJD(5) + (t155 * t172 - t135) * qJD(4) (t155 * t173 - t159 * t224) * qJD(5) + (-pkin(10) * t225 + (pkin(4) * t159 + t228) * t156) * qJD(4), t101 * t73 + t118 * t50, t101 * t74 - t117 * t50 - t118 * t52 + t73 * t99, -t156 * t73 + t193, -t117 * t146 - t242, 0, t116 * t74 + t117 * t87 + t143 * t52 + t146 * t85 + t156 * t54 + t206 * t99, -t101 * t206 - t116 * t73 + t118 * t87 + t143 * t50 - t146 * t86 + t156 * t53; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t216, -t146, 0, 0, 0, 0, 0, t107, t109, 0, 0, 0, 0, 0, -t160 * t74 + t194, t118 * t216 + t160 * t73; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t182, -0.2e1 * t177, 0, 0, 0, t155 * t207, t159 * t207, -0.2e1 * t118 * t73, 0.2e1 * t117 * t73 - 0.2e1 * t118 * t74, 0, 0, 0, 0.2e1 * t117 * t206 + 0.2e1 * t143 * t74, 0.2e1 * t118 * t206 - 0.2e1 * t143 * t73; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t35, -t34, t78, t9, t8, 0, 0, t12, -t13, t78, t78 * t244 + (-t241 + (-t18 - t245) * t154) * qJD(6) + t199 (-t104 * t208 - t154 * t78) * pkin(5) + t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t107, t109, t146, t57, t56, 0, 0, t50, -t52, t146, t146 * t244 + (-t240 + (-t156 * pkin(5) - t66) * t154) * qJD(6) + t179 (-t146 * t154 - t156 * t208) * pkin(5) + t14; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t108, t106, 0, 0, 0, 0, 0, t51, t49; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t212, -t213, 0, -pkin(10) * t212, pkin(10) * t213, 0, 0, -t73, -t74, 0, t54, t53; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t205, -0.2e1 * t204; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t12, -t13, t78, t2, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t50, -t52, t146, t15, t14; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t51, t49; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t73, -t74, 0, t54, t53; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t205, -t204; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t3;
