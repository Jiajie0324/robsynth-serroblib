% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRRRRR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d5,d6]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 04:27
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRRRRR6_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR6_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRRR6_inertiaJ_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
t145 = sin(qJ(4));
t202 = t145 * pkin(3);
t129 = pkin(11) + t202;
t144 = sin(qJ(5));
t137 = t144 ^ 2;
t149 = cos(qJ(5));
t139 = t149 ^ 2;
t172 = t137 + t139;
t174 = t172 * t129;
t141 = sin(pkin(6));
t152 = cos(qJ(2));
t182 = t141 * t152;
t150 = cos(qJ(4));
t146 = sin(qJ(3));
t151 = cos(qJ(3));
t142 = cos(pkin(6));
t166 = pkin(8) * t182;
t147 = sin(qJ(2));
t206 = pkin(1) * t147;
t90 = t166 + (pkin(9) + t206) * t142;
t91 = (-pkin(2) * t152 - pkin(9) * t147 - pkin(1)) * t141;
t59 = t146 * t91 + t151 * t90;
t183 = t141 * t147;
t95 = t142 * t151 - t146 * t183;
t42 = t95 * pkin(10) + t59;
t189 = t150 * t42;
t167 = pkin(3) * t182;
t58 = -t146 * t90 + t151 * t91;
t96 = t142 * t146 + t151 * t183;
t38 = -t96 * pkin(10) - t167 + t58;
t23 = t145 * t38 + t189;
t21 = -pkin(11) * t182 + t23;
t64 = t145 * t96 - t150 * t95;
t66 = t145 * t95 + t150 * t96;
t122 = pkin(8) * t183;
t205 = pkin(1) * t152;
t89 = t122 + (-pkin(2) - t205) * t142;
t73 = -t95 * pkin(3) + t89;
t28 = t64 * pkin(4) - t66 * pkin(11) + t73;
t10 = t144 * t28 + t149 * t21;
t9 = -t144 * t21 + t149 * t28;
t219 = t10 * t149 - t9 * t144;
t63 = t64 ^ 2;
t209 = -pkin(10) - pkin(9);
t117 = t209 * t151;
t165 = t209 * t146;
t84 = -t145 * t117 - t150 * t165;
t218 = t84 ^ 2;
t217 = -0.2e1 * t64;
t216 = 0.2e1 * t64;
t109 = t145 * t146 - t150 * t151;
t104 = t109 ^ 2;
t215 = 0.2e1 * t109;
t131 = -t149 * pkin(5) - pkin(4);
t198 = t150 * pkin(3);
t114 = t131 - t198;
t214 = 0.2e1 * t114;
t213 = 0.2e1 * t131;
t132 = -t151 * pkin(3) - pkin(2);
t212 = 0.2e1 * t132;
t211 = 0.2e1 * t141;
t210 = 0.2e1 * t151;
t143 = sin(qJ(6));
t148 = cos(qJ(6));
t107 = t143 * t144 - t148 * t149;
t111 = t143 * t149 + t148 * t144;
t207 = t64 * pkin(5);
t53 = -t144 * t182 + t149 * t66;
t6 = -t53 * pkin(12) + t207 + t9;
t51 = t144 * t66 + t149 * t182;
t7 = -t51 * pkin(12) + t10;
t3 = -t143 * t7 + t148 * t6;
t200 = t148 * t7;
t4 = t143 * t6 + t200;
t208 = -t4 * t107 - t3 * t111;
t204 = t109 * pkin(5);
t203 = t143 * pkin(5);
t201 = t148 * pkin(5);
t199 = t149 * pkin(11);
t130 = -pkin(4) - t198;
t196 = pkin(4) - t130;
t112 = t145 * t151 + t150 * t146;
t177 = t149 * t112;
t77 = t109 * pkin(4) - t112 * pkin(11) + t132;
t87 = -t150 * t117 + t145 * t165;
t40 = -t144 * t87 + t149 * t77;
t35 = -pkin(12) * t177 + t204 + t40;
t190 = t149 * t87;
t36 = t190 + (-pkin(12) * t112 + t77) * t144;
t17 = -t143 * t36 + t148 * t35;
t191 = t148 * t36;
t18 = t143 * t35 + t191;
t195 = -t18 * t107 - t17 * t111;
t194 = t145 * t42 - t150 * t38;
t101 = (-pkin(12) - t129) * t144;
t135 = t149 * pkin(12);
t176 = t149 * t129;
t102 = t135 + t176;
t74 = t148 * t101 - t143 * t102;
t75 = t143 * t101 + t148 * t102;
t193 = -t75 * t107 - t74 * t111;
t115 = (-pkin(12) - pkin(11)) * t144;
t116 = t135 + t199;
t83 = t148 * t115 - t143 * t116;
t86 = t143 * t115 + t148 * t116;
t192 = -t86 * t107 - t83 * t111;
t60 = t144 * t64;
t61 = t149 * t64;
t20 = pkin(4) * t182 + t194;
t188 = t20 * t149;
t46 = t51 * t149;
t47 = t53 * t144;
t49 = t64 * t109;
t187 = t84 * t149;
t186 = t95 * t151;
t185 = t96 * t146;
t136 = t141 ^ 2;
t184 = t136 * t152;
t181 = t142 * t147;
t180 = t144 * t112;
t179 = t144 * t129;
t178 = t144 * t149;
t175 = t114 + t131;
t173 = t172 * pkin(11);
t138 = t146 ^ 2;
t140 = t151 ^ 2;
t171 = t138 + t140;
t170 = -0.2e1 * t112 * t109;
t169 = -0.2e1 * t182;
t168 = 0.2e1 * t182;
t164 = t146 * t182;
t163 = t151 * t182;
t161 = -pkin(4) * t112 - pkin(11) * t109;
t41 = t144 * t77 + t190;
t24 = -t40 * t144 + t41 * t149;
t159 = t47 - t46;
t158 = -t58 * t146 + t59 * t151;
t157 = -t109 * t129 + t112 * t130;
t126 = t136 * t152 ^ 2;
t124 = 0.2e1 * t178;
t106 = t112 ^ 2;
t105 = t111 ^ 2;
t103 = t107 ^ 2;
t100 = pkin(1) * t181 + t166;
t99 = t142 * t205 - t122;
t98 = t149 * t109;
t97 = t144 * t109;
t94 = t144 * t177;
t82 = t111 * t109;
t81 = t107 * t109;
t80 = -0.2e1 * t111 * t107;
t79 = t84 * t144;
t78 = (-t137 + t139) * t112;
t76 = (-t107 * t143 - t111 * t148) * pkin(5);
t71 = -t143 * t180 + t148 * t177;
t69 = t111 * t112;
t62 = pkin(5) * t180 + t84;
t55 = t71 * t111;
t54 = t69 * t107;
t50 = t111 * t64;
t48 = t107 * t64;
t44 = t62 * t111;
t43 = t62 * t107;
t33 = -t71 * t107 - t111 * t69;
t32 = -t143 * t51 + t148 * t53;
t31 = -t144 * t51 + t53 * t149;
t29 = t143 * t53 + t148 * t51;
t26 = t32 * t111;
t25 = t29 * t107;
t19 = t20 * t144;
t14 = t51 * pkin(5) + t20;
t13 = t14 * t111;
t12 = t14 * t107;
t11 = -t32 * t107 - t111 * t29;
t1 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t136 * t147 ^ 2, 0.2e1 * t147 * t184, t181 * t211, t126, t142 * t168, t142 ^ 2, 0.2e1 * pkin(1) * t184 + 0.2e1 * t99 * t142, -0.2e1 * t100 * t142 - 0.2e1 * t136 * t206 (t100 * t152 - t147 * t99) * t211, t136 * pkin(1) ^ 2 + t100 ^ 2 + t99 ^ 2, t96 ^ 2, 0.2e1 * t96 * t95, t96 * t169, t95 ^ 2, t95 * t169, t126, -0.2e1 * t58 * t182 - 0.2e1 * t89 * t95, 0.2e1 * t59 * t182 + 0.2e1 * t89 * t96, -0.2e1 * t58 * t96 + 0.2e1 * t59 * t95, t58 ^ 2 + t59 ^ 2 + t89 ^ 2, t66 ^ 2, t66 * t217, t66 * t169, t63, t64 * t168, t126, 0.2e1 * t182 * t194 + 0.2e1 * t73 * t64, 0.2e1 * t23 * t182 + 0.2e1 * t73 * t66, 0.2e1 * t194 * t66 - 0.2e1 * t23 * t64, t194 ^ 2 + t23 ^ 2 + t73 ^ 2, t53 ^ 2, -0.2e1 * t53 * t51, t53 * t216, t51 ^ 2, t51 * t217, t63, 0.2e1 * t20 * t51 + 0.2e1 * t9 * t64, -0.2e1 * t10 * t64 + 0.2e1 * t20 * t53, -0.2e1 * t10 * t51 - 0.2e1 * t9 * t53, t10 ^ 2 + t20 ^ 2 + t9 ^ 2, t32 ^ 2, -0.2e1 * t32 * t29, t32 * t216, t29 ^ 2, t29 * t217, t63, 0.2e1 * t14 * t29 + 0.2e1 * t3 * t64, 0.2e1 * t14 * t32 - 0.2e1 * t4 * t64, -0.2e1 * t4 * t29 - 0.2e1 * t3 * t32, t14 ^ 2 + t3 ^ 2 + t4 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t183, 0, t182, t142, t99, -t100, 0, 0, t185, t146 * t95 + t96 * t151, -t164, t186, -t163, 0, pkin(2) * t95 + pkin(9) * t164 - t89 * t151, -pkin(2) * t96 + pkin(9) * t163 + t89 * t146 (t185 + t186) * pkin(9) + t158, -t89 * pkin(2) + pkin(9) * t158, t66 * t112, -t66 * t109 - t112 * t64, -t112 * t182, t49, t109 * t182, 0, t73 * t109 + t132 * t64 + t84 * t182, t73 * t112 + t132 * t66 + t87 * t182, -t23 * t109 + t112 * t194 - t87 * t64 + t84 * t66, t73 * t132 + t194 * t84 + t23 * t87, t53 * t177 (-t47 - t46) * t112, t53 * t109 + t64 * t177, t51 * t180, -t51 * t109 - t64 * t180, t49, t9 * t109 + t20 * t180 + t40 * t64 + t84 * t51, -t10 * t109 + t20 * t177 - t41 * t64 + t84 * t53, -t40 * t53 - t41 * t51 + (-t10 * t144 - t149 * t9) * t112, t10 * t41 + t20 * t84 + t9 * t40, t32 * t71, -t71 * t29 - t32 * t69, t32 * t109 + t71 * t64, t29 * t69, -t29 * t109 - t69 * t64, t49, t3 * t109 + t14 * t69 + t17 * t64 + t62 * t29, -t4 * t109 + t14 * t71 - t18 * t64 + t62 * t32, -t17 * t32 - t18 * t29 - t3 * t71 - t4 * t69, t14 * t62 + t3 * t17 + t4 * t18; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t138, t146 * t210, 0, t140, 0, 0, pkin(2) * t210, -0.2e1 * pkin(2) * t146, 0.2e1 * t171 * pkin(9), t171 * pkin(9) ^ 2 + pkin(2) ^ 2, t106, t170, 0, t104, 0, 0, t109 * t212, t112 * t212, -0.2e1 * t87 * t109 + 0.2e1 * t84 * t112, t132 ^ 2 + t87 ^ 2 + t218, t139 * t106, -0.2e1 * t106 * t178, t177 * t215, t137 * t106, t144 * t170, t104, 0.2e1 * t40 * t109 + 0.2e1 * t84 * t180, -0.2e1 * t41 * t109 + 0.2e1 * t84 * t177, 0.2e1 * (-t144 * t41 - t149 * t40) * t112, t40 ^ 2 + t41 ^ 2 + t218, t71 ^ 2, -0.2e1 * t71 * t69, t71 * t215, t69 ^ 2, -t69 * t215, t104, 0.2e1 * t17 * t109 + 0.2e1 * t62 * t69, -0.2e1 * t18 * t109 + 0.2e1 * t62 * t71, -0.2e1 * t17 * t71 - 0.2e1 * t18 * t69, t17 ^ 2 + t18 ^ 2 + t62 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t96, 0, t95, -t182, t58, -t59, 0, 0, 0, 0, t66, 0, -t64, -t182, -t150 * t167 - t194, -t189 + (-t38 + t167) * t145 (-t145 * t64 - t150 * t66) * pkin(3) (t145 * t23 - t150 * t194) * pkin(3), t47, t31, t60, -t46, t61, 0, t130 * t51 - t64 * t179 - t188, t130 * t53 - t64 * t176 + t19, t129 * t159 + t219, t129 * t219 + t20 * t130, t26, t11, t50, t25, -t48, 0, t114 * t29 + t74 * t64 + t12, t114 * t32 - t75 * t64 + t13, -t75 * t29 - t74 * t32 + t208, t14 * t114 + t3 * t74 + t4 * t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t146, 0, t151, 0, -t146 * pkin(9), -t151 * pkin(9), 0, 0, 0, 0, t112, 0, -t109, 0, -t84, -t87 (-t109 * t145 - t112 * t150) * pkin(3) (t145 * t87 - t150 * t84) * pkin(3), t94, t78, t97, -t94, t98, 0, t144 * t157 - t187, t149 * t157 + t79, t24, t129 * t24 + t84 * t130, t55, t33, t82, t54, -t81, 0, t74 * t109 + t114 * t69 + t43, -t75 * t109 + t114 * t71 + t44, -t75 * t69 - t74 * t71 + t195, t62 * t114 + t17 * t74 + t18 * t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t198, -0.2e1 * t202, 0 (t145 ^ 2 + t150 ^ 2) * pkin(3) ^ 2, t137, t124, 0, t139, 0, 0, -0.2e1 * t130 * t149, 0.2e1 * t130 * t144, 0.2e1 * t174, t172 * t129 ^ 2 + t130 ^ 2, t105, t80, 0, t103, 0, 0, t107 * t214, t111 * t214, 0.2e1 * t193, t114 ^ 2 + t74 ^ 2 + t75 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t66, 0, -t64, -t182, -t194, -t23, 0, 0, t47, t31, t60, -t46, t61, 0, -pkin(4) * t51 - pkin(11) * t60 - t188, -pkin(4) * t53 - pkin(11) * t61 + t19, pkin(11) * t159 + t219, -t20 * pkin(4) + pkin(11) * t219, t26, t11, t50, t25, -t48, 0, t131 * t29 + t83 * t64 + t12, t131 * t32 - t86 * t64 + t13, -t86 * t29 - t83 * t32 + t208, t14 * t131 + t3 * t83 + t4 * t86; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t112, 0, -t109, 0, -t84, -t87, 0, 0, t94, t78, t97, -t94, t98, 0, t144 * t161 - t187, t149 * t161 + t79, t24, -t84 * pkin(4) + pkin(11) * t24, t55, t33, t82, t54, -t81, 0, t83 * t109 + t131 * t69 + t43, -t86 * t109 + t131 * t71 + t44, -t86 * t69 - t83 * t71 + t195, t62 * t131 + t17 * t83 + t18 * t86; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t198, -t202, 0, 0, t137, t124, 0, t139, 0, 0, t196 * t149, -t196 * t144, t173 + t174, -t130 * pkin(4) + pkin(11) * t174, t105, t80, 0, t103, 0, 0, t175 * t107, t175 * t111, t192 + t193, t114 * t131 + t74 * t83 + t75 * t86; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t137, t124, 0, t139, 0, 0, 0.2e1 * pkin(4) * t149, -0.2e1 * pkin(4) * t144, 0.2e1 * t173, t172 * pkin(11) ^ 2 + pkin(4) ^ 2, t105, t80, 0, t103, 0, 0, t107 * t213, t111 * t213, 0.2e1 * t192, t131 ^ 2 + t83 ^ 2 + t86 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t53, 0, -t51, t64, t9, -t10, 0, 0, 0, 0, t32, 0, -t29, t64, t201 * t64 + t3, -t200 + (-t6 - t207) * t143 (-t143 * t29 - t148 * t32) * pkin(5) (t143 * t4 + t148 * t3) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t177, 0, -t180, t109, t40, -t41, 0, 0, 0, 0, t71, 0, -t69, t109, t109 * t201 + t17, -t191 + (-t35 - t204) * t143 (-t143 * t69 - t148 * t71) * pkin(5) (t143 * t18 + t148 * t17) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t144, 0, t149, 0, -t179, -t176, 0, 0, 0, 0, t111, 0, -t107, 0, t74, -t75, t76 (t143 * t75 + t148 * t74) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t144, 0, t149, 0, -t144 * pkin(11), -t199, 0, 0, 0, 0, t111, 0, -t107, 0, t83, -t86, t76 (t143 * t86 + t148 * t83) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t201, -0.2e1 * t203, 0 (t143 ^ 2 + t148 ^ 2) * pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t32, 0, -t29, t64, t3, -t4, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t71, 0, -t69, t109, t17, -t18, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t111, 0, -t107, 0, t74, -t75, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t111, 0, -t107, 0, t83, -t86, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t201, -t203, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t1;
