% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RRRRPR8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d6]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 22:46
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRRRPR8_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR8_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR8_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRPR8_inertiaDJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 22:44:49
% EndTime: 2019-03-09 22:45:06
% DurationCPUTime: 6.29s
% Computational Cost: add. (8024->449), mult. (18688->748), div. (0->0), fcn. (16391->8), ass. (0->193)
t142 = sin(qJ(3));
t248 = cos(qJ(4));
t249 = -pkin(9) - pkin(8);
t199 = t249 * t248;
t144 = cos(qJ(3));
t246 = sin(qJ(4));
t217 = t246 * t144;
t78 = -t142 * t199 - t249 * t217;
t143 = sin(qJ(2));
t145 = cos(qJ(2));
t232 = t145 * qJD(2);
t234 = qJD(3) * t144;
t253 = t142 * t232 + t143 * t234;
t137 = t142 ^ 2;
t139 = t144 ^ 2;
t237 = t137 - t139;
t203 = qJD(3) * t237;
t138 = t143 ^ 2;
t202 = (-t145 ^ 2 + t138) * qJD(2);
t252 = qJD(3) + qJD(4);
t132 = t143 * qJD(2);
t233 = qJD(3) * t145;
t214 = t142 * t233;
t171 = t144 * t132 + t214;
t243 = t145 * pkin(2);
t190 = -pkin(8) * t143 - t243;
t180 = -pkin(1) + t190;
t172 = t144 * t180;
t189 = pkin(2) * t143 - pkin(8) * t145;
t175 = t189 * t142;
t57 = pkin(7) * t171 - qJD(2) * t175 - qJD(3) * t172;
t251 = t249 * t143 - pkin(1) - t243;
t146 = 2 * qJD(5);
t250 = -pkin(4) - pkin(5);
t247 = cos(qJ(6));
t245 = t142 * pkin(7);
t136 = t143 * pkin(7);
t244 = t144 * pkin(2);
t220 = -pkin(3) - t245;
t159 = t251 * t144 + t220 * t145;
t67 = t246 * t159;
t241 = t142 * t143;
t240 = t144 * t145;
t124 = pkin(7) * t240;
t85 = t142 * t180 + t124;
t77 = -pkin(9) * t241 + t85;
t44 = t248 * t77 + t67;
t126 = t246 * pkin(3) + qJ(5);
t239 = qJ(5) + t126;
t219 = t248 * t144;
t105 = t249 * t219;
t198 = t249 * t246;
t79 = t142 * t198 - t105;
t197 = t247 * t250;
t238 = t247 * qJD(5) + qJD(6) * t197;
t106 = pkin(3) * t241 + t136;
t235 = qJD(3) * t142;
t141 = sin(qJ(6));
t134 = qJD(6) * t141;
t231 = t145 * qJD(5);
t204 = t248 * qJD(4);
t131 = pkin(3) * t204;
t121 = t131 + qJD(5);
t230 = qJD(5) + t121;
t206 = qJD(2) * t246;
t192 = t145 * t206;
t207 = qJD(2) * t248;
t193 = t145 * t207;
t218 = t246 * t142;
t196 = t143 * t218;
t50 = t142 * t193 + (t192 + (t248 * qJD(3) + t204) * t143) * t144 - t252 * t196;
t102 = t248 * t142 + t217;
t90 = t102 * t143;
t229 = 0.2e1 * t90 * t50;
t228 = -0.2e1 * pkin(1) * qJD(2);
t227 = -0.2e1 * pkin(2) * qJD(3);
t101 = t218 - t219;
t76 = t252 * t102;
t226 = 0.2e1 * t101 * t76;
t225 = t145 * t245;
t224 = pkin(3) * t235;
t223 = pkin(4) * t132;
t130 = pkin(7) * t232;
t128 = -t248 * pkin(3) - pkin(4);
t186 = -pkin(5) + t128;
t169 = t247 * t186;
t205 = qJD(4) * t246;
t200 = pkin(3) * t205;
t222 = qJD(6) * t169 + t247 * t121 + t141 * t200;
t81 = t253 * pkin(3) + t130;
t129 = -pkin(3) * t144 - pkin(2);
t215 = qJ(5) * t132;
t212 = t144 * t233;
t211 = t142 * t234;
t210 = t143 * t232;
t209 = t144 * t232;
t181 = qJD(3) * t198;
t182 = qJD(3) * t199;
t51 = t78 * qJD(4) - t142 * t182 - t144 * t181;
t52 = -t144 * t182 - qJD(4) * t105 + (qJD(4) * t198 + t181) * t142;
t208 = -t79 * t51 + t52 * t78;
t135 = qJD(6) * t247;
t201 = 0.2e1 * t210;
t195 = t143 * t209;
t194 = t138 * t211;
t40 = -qJ(5) * t145 + t44;
t91 = t143 * t219 - t196;
t191 = qJ(5) * t91 - t106;
t49 = t142 * t192 + t143 * t76 - t144 * t193;
t188 = t49 * t90 - t50 * t91;
t187 = t101 * t50 + t76 * t90;
t75 = t252 * t101;
t185 = t101 * t75 - t102 * t76;
t84 = t172 - t225;
t184 = -t142 * t85 - t144 * t84;
t179 = qJ(5) * t102 - t129;
t152 = (-t251 * t142 - t124) * qJD(3) + (t249 * t240 + (-t220 + t244) * t143) * qJD(2);
t156 = -pkin(9) * t253 - t57;
t154 = t248 * t152 - t246 * t156;
t149 = qJD(4) * t67 + t204 * t77 - t154;
t10 = t149 - t223;
t148 = -pkin(5) * t132 + t49 * pkin(10) + t10;
t157 = t248 * t159;
t43 = -t246 * t77 + t157;
t41 = t145 * pkin(4) - t43;
t153 = t145 * pkin(5) - t91 * pkin(10) + t41;
t150 = t247 * t153;
t11 = -qJD(4) * t157 - t246 * t152 - t248 * t156 + t205 * t77;
t9 = -t11 + t215 - t231;
t158 = t50 * pkin(10) + t9;
t28 = pkin(10) * t90 + t40;
t1 = -qJD(6) * t150 + t28 * t134 - t141 * t148 - t247 * t158;
t62 = t141 * t90 + t247 * t91;
t178 = t90 * t132 - t145 * t50;
t177 = t79 * t132 + t145 * t51;
t176 = -t78 * t132 + t145 * t52;
t174 = t101 * t132 - t145 * t76;
t73 = t141 * t101 + t247 * t102;
t173 = -t49 * t78 - t79 * t50 + t51 * t90 + t52 * t91;
t109 = t247 * qJ(5) + t141 * t250;
t168 = -qJ(5) * t49 + qJD(5) * t91 - t81;
t167 = 0.2e1 * t51 * t101 + 0.2e1 * t102 * t52 - 0.2e1 * t75 * t78 - 0.2e1 * t79 * t76;
t166 = -qJ(5) * t75 + qJD(5) * t102 - t224;
t165 = -t102 * pkin(10) + t78;
t164 = t101 * t49 - t102 * t50 + t75 * t90 - t76 * t91;
t163 = t141 * t165;
t87 = t247 * t126 + t141 * t186;
t162 = t76 * pkin(10) - t51;
t161 = t247 * t165;
t58 = -t85 * qJD(3) + (pkin(7) * t241 + t144 * t189) * qJD(2);
t160 = qJD(3) * t184 - t142 * t58 - t144 * t57;
t155 = t75 * pkin(10) + t52;
t151 = t141 * t153;
t147 = qJD(6) * t151 + t28 * t135 + t141 * t158 - t247 * t148;
t125 = -0.2e1 * t200;
t120 = -0.2e1 * t210;
t118 = t145 * t200;
t117 = t247 * t200;
t108 = -t141 * qJ(5) + t197;
t89 = t141 * qJD(5) + qJD(6) * t109;
t88 = qJ(5) * t134 - t238;
t86 = -t141 * t126 + t169;
t80 = -t142 * t209 + t143 * t203;
t72 = -t247 * t101 + t102 * t141;
t68 = pkin(4) * t101 - t179;
t65 = pkin(10) * t101 + t79;
t64 = qJD(6) * t87 + t141 * t121 - t117;
t63 = t126 * t134 - t222;
t61 = t141 * t91 - t247 * t90;
t60 = -0.2e1 * t102 * t75;
t56 = t250 * t101 + t179;
t55 = pkin(4) * t90 - t191;
t54 = t102 * t132 + t145 * t75;
t42 = t250 * t90 + t191;
t35 = -0.2e1 * t91 * t49;
t34 = pkin(4) * t76 - t166;
t31 = t247 * t65 + t163;
t30 = -t141 * t65 + t161;
t29 = 0.2e1 * t91 * t132 + 0.2e1 * t145 * t49;
t21 = t73 * qJD(6) - t141 * t75 - t247 * t76;
t20 = -t101 * t135 + t102 * t134 - t141 * t76 + t247 * t75;
t19 = t250 * t76 + t166;
t18 = -t102 * t49 - t75 * t91;
t17 = pkin(4) * t50 - t168;
t16 = t62 * qJD(6) - t141 * t49 - t247 * t50;
t15 = t91 * t134 - t90 * t135 - t141 * t50 + t247 * t49;
t14 = t247 * t28 + t151;
t13 = -t141 * t28 + t150;
t12 = -t44 * qJD(4) + t154;
t8 = t250 * t50 + t168;
t7 = qJD(6) * t163 + t65 * t135 + t141 * t162 - t247 * t155;
t6 = -qJD(6) * t161 + t65 * t134 - t141 * t155 - t247 * t162;
t2 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t201, -0.2e1 * t202, 0, t120, 0, 0, t143 * t228, t145 * t228, 0, 0, 0.2e1 * t139 * t210 - 0.2e1 * t194, 0.2e1 * t138 * t203 - 0.4e1 * t142 * t195, 0.2e1 * t143 * t214 + 0.2e1 * t144 * t202, 0.2e1 * t137 * t210 + 0.2e1 * t194, -0.2e1 * t142 * t202 + 0.2e1 * t143 * t212, t120, 0.2e1 * t84 * t132 - 0.2e1 * t145 * t58 + 0.2e1 * (t138 * t234 + t142 * t201) * pkin(7), -0.2e1 * t85 * t132 - 0.2e1 * t145 * t57 + 0.2e1 * (-t138 * t235 + 0.2e1 * t195) * pkin(7), 0.2e1 * t184 * t232 + 0.2e1 * (t142 * t57 - t144 * t58 + (t142 * t84 - t144 * t85) * qJD(3)) * t143, 0.2e1 * pkin(7) ^ 2 * t210 - 0.2e1 * t57 * t85 + 0.2e1 * t58 * t84, t35, 0.2e1 * t188, t29, t229, -0.2e1 * t178, t120, 0.2e1 * t106 * t50 - 0.2e1 * t12 * t145 + 0.2e1 * t43 * t132 + 0.2e1 * t81 * t90, -0.2e1 * t106 * t49 - 0.2e1 * t11 * t145 - 0.2e1 * t44 * t132 + 0.2e1 * t81 * t91, 0.2e1 * t11 * t90 - 0.2e1 * t12 * t91 + 0.2e1 * t43 * t49 - 0.2e1 * t44 * t50, 0.2e1 * t106 * t81 - 0.2e1 * t11 * t44 + 0.2e1 * t12 * t43, t35, t29, -0.2e1 * t188, t120, 0.2e1 * t178, t229, 0.2e1 * t10 * t145 - 0.2e1 * t41 * t132 + 0.2e1 * t17 * t90 + 0.2e1 * t50 * t55, 0.2e1 * t10 * t91 - 0.2e1 * t40 * t50 - 0.2e1 * t41 * t49 - 0.2e1 * t9 * t90, 0.2e1 * t40 * t132 - 0.2e1 * t145 * t9 - 0.2e1 * t17 * t91 + 0.2e1 * t49 * t55, 0.2e1 * t10 * t41 + 0.2e1 * t17 * t55 + 0.2e1 * t40 * t9, -0.2e1 * t62 * t15, 0.2e1 * t15 * t61 - 0.2e1 * t16 * t62, -0.2e1 * t62 * t132 - 0.2e1 * t145 * t15, 0.2e1 * t61 * t16, 0.2e1 * t61 * t132 - 0.2e1 * t145 * t16, t120, -0.2e1 * t13 * t132 - 0.2e1 * t145 * t147 + 0.2e1 * t16 * t42 + 0.2e1 * t61 * t8, 0.2e1 * t1 * t145 + 0.2e1 * t14 * t132 - 0.2e1 * t15 * t42 + 0.2e1 * t62 * t8, 0.2e1 * t1 * t61 + 0.2e1 * t13 * t15 - 0.2e1 * t14 * t16 + 0.2e1 * t147 * t62, -0.2e1 * t1 * t14 - 0.2e1 * t13 * t147 + 0.2e1 * t42 * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t232, 0, -t132, 0, -t130, pkin(7) * t132, 0, 0, -t80, -0.4e1 * t143 * t211 - t237 * t232, t142 * t132 - t212, t80, t171, 0 (pkin(8) * t240 + (-t244 + t245) * t143) * qJD(3) + (t142 * t190 - t124) * qJD(2) (t144 * t136 + t175) * qJD(3) + (t144 * t190 + t225) * qJD(2), t160, -pkin(2) * t130 + pkin(8) * t160, t18, t164, t54, t187, -t174, 0, t101 * t81 + t106 * t76 + t129 * t50 + t90 * t224 + t176, t102 * t81 - t106 * t75 - t129 * t49 + t91 * t224 - t177, t101 * t11 - t102 * t12 + t43 * t75 - t44 * t76 + t173, t106 * t224 - t11 * t79 - t12 * t78 + t129 * t81 - t43 * t52 - t44 * t51, t18, t54, -t164, 0, t174, t187, t101 * t17 + t34 * t90 + t50 * t68 + t55 * t76 + t176, t10 * t102 - t101 * t9 - t40 * t76 - t41 * t75 + t173, -t102 * t17 - t34 * t91 + t49 * t68 + t55 * t75 + t177, t10 * t78 + t17 * t68 + t34 * t55 - t40 * t51 + t41 * t52 + t79 * t9, -t15 * t73 - t20 * t62, t15 * t72 - t16 * t73 + t20 * t61 - t21 * t62, -t73 * t132 - t145 * t20, t16 * t72 + t21 * t61, t72 * t132 - t145 * t21, 0, -t30 * t132 - t145 * t7 + t16 * t56 + t19 * t61 + t21 * t42 + t72 * t8, t31 * t132 + t145 * t6 - t15 * t56 + t19 * t62 - t20 * t42 + t73 * t8, t1 * t72 + t13 * t20 - t14 * t21 + t147 * t73 + t15 * t30 - t16 * t31 + t6 * t61 + t62 * t7, -t1 * t31 - t13 * t7 - t14 * t6 - t147 * t30 + t19 * t42 + t56 * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t211, -0.2e1 * t203, 0, -0.2e1 * t211, 0, 0, t142 * t227, t144 * t227, 0, 0, t60, 0.2e1 * t185, 0, t226, 0, 0, 0.2e1 * t101 * t224 + 0.2e1 * t129 * t76, 0.2e1 * t102 * t224 - 0.2e1 * t129 * t75, t167, 0.2e1 * t129 * t224 + 0.2e1 * t208, t60, 0, -0.2e1 * t185, 0, 0, t226, 0.2e1 * t101 * t34 + 0.2e1 * t68 * t76, t167, -0.2e1 * t102 * t34 + 0.2e1 * t68 * t75, 0.2e1 * t34 * t68 + 0.2e1 * t208, -0.2e1 * t73 * t20, 0.2e1 * t20 * t72 - 0.2e1 * t21 * t73, 0, 0.2e1 * t72 * t21, 0, 0, 0.2e1 * t19 * t72 + 0.2e1 * t21 * t56, 0.2e1 * t19 * t73 - 0.2e1 * t20 * t56, 0.2e1 * t20 * t30 - 0.2e1 * t21 * t31 + 0.2e1 * t6 * t72 + 0.2e1 * t7 * t73, 0.2e1 * t19 * t56 - 0.2e1 * t30 * t7 - 0.2e1 * t31 * t6; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t143 * t235 + t209, 0, -t253, t132, t58, t57, 0, 0, 0, 0, -t49, 0, -t50, t132, pkin(3) * t143 * t207 + t118 - t149 (-t143 * t206 + t145 * t204) * pkin(3) + t11 (-t246 * t50 + t248 * t49 + (t246 * t91 - t248 * t90) * qJD(4)) * pkin(3) (-t246 * t11 + t248 * t12 + (-t246 * t43 + t248 * t44) * qJD(4)) * pkin(3), 0, -t49, 0, t132, t50, 0, -t128 * t132 - t10 + t118, -t121 * t90 - t126 * t50 - t128 * t49 + t200 * t91, t239 * t132 - t230 * t145 - t11, t10 * t128 + t40 * t121 + t9 * t126 + t200 * t41, 0, 0, t15, 0, t16, t132, -t86 * t132 - t64 * t145 + t147, t87 * t132 + t145 * t63 - t1, t15 * t86 - t16 * t87 + t61 * t63 + t62 * t64, -t1 * t87 - t13 * t64 - t14 * t63 - t147 * t86; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t234, 0, -t235, 0, -pkin(8) * t234, pkin(8) * t235, 0, 0, 0, 0, -t75, 0, -t76, 0, -t52, t51 (-t246 * t76 + t248 * t75 + (-t248 * t101 + t246 * t102) * qJD(4)) * pkin(3) (-t246 * t51 - t248 * t52 + (t246 * t78 + t248 * t79) * qJD(4)) * pkin(3), 0, -t75, 0, 0, t76, 0, -t52, -t121 * t101 + t102 * t200 - t126 * t76 - t128 * t75, -t51, t79 * t121 - t51 * t126 + t52 * t128 + t200 * t78, 0, 0, t20, 0, t21, 0, t7, -t6, t20 * t86 - t21 * t87 + t63 * t72 + t64 * t73, -t30 * t64 - t31 * t63 - t6 * t87 - t7 * t86; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t125, -0.2e1 * t131, 0, 0, 0, 0, 0, 0, 0, 0, t125, 0, 0.2e1 * t121, 0.2e1 * t126 * t121 + 0.2e1 * t128 * t200, 0, 0, 0, 0, 0, 0, 0.2e1 * t64, -0.2e1 * t63, 0, -0.2e1 * t63 * t87 - 0.2e1 * t64 * t86; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t49, 0, -t50, t132, t12, t11, 0, 0, 0, -t49, 0, t132, t50, 0, -t149 + 0.2e1 * t223, pkin(4) * t49 - qJ(5) * t50 - qJD(5) * t90, -t11 + 0.2e1 * t215 - 0.2e1 * t231, -pkin(4) * t10 + qJ(5) * t9 + qJD(5) * t40, 0, 0, t15, 0, t16, t132, -t108 * t132 - t89 * t145 + t147, t109 * t132 + t145 * t88 - t1, t108 * t15 - t109 * t16 + t61 * t88 + t62 * t89, -t1 * t109 - t108 * t147 - t13 * t89 - t14 * t88; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t75, 0, -t76, 0, -t52, t51, 0, 0, 0, -t75, 0, 0, t76, 0, -t52, pkin(4) * t75 - qJ(5) * t76 - qJD(5) * t101, -t51, -pkin(4) * t52 - qJ(5) * t51 + qJD(5) * t79, 0, 0, t20, 0, t21, 0, t7, -t6, t108 * t20 - t109 * t21 + t72 * t88 + t73 * t89, -t108 * t7 - t109 * t6 - t30 * t89 - t31 * t88; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t200, -t131, 0, 0, 0, 0, 0, 0, 0, 0, -t200, 0, t146 + t131, -pkin(4) * t200 + t121 * qJ(5) + t126 * qJD(5), 0, 0, 0, 0, 0, 0, -t117 + t230 * t141 + (t87 + t109) * qJD(6), -t239 * t134 + t222 + t238, 0, -t108 * t64 - t109 * t63 - t86 * t89 - t87 * t88; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t146, qJ(5) * t146, 0, 0, 0, 0, 0, 0, 0.2e1 * t89, -0.2e1 * t88, 0, -0.2e1 * t108 * t89 - 0.2e1 * t109 * t88; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t132, -t49, 0, t10, 0, 0, 0, 0, 0, 0, -t247 * t132 - t145 * t134, t141 * t132 - t135 * t145, t247 * t15 - t141 * t16 + (t141 * t62 - t247 * t61) * qJD(6), -t147 * t247 - t1 * t141 + (-t13 * t141 + t247 * t14) * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t75, 0, t52, 0, 0, 0, 0, 0, 0, 0, 0, t247 * t20 - t141 * t21 + (t141 * t73 - t247 * t72) * qJD(6), -t7 * t247 - t6 * t141 + (-t141 * t30 + t247 * t31) * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t200, 0, 0, 0, 0, 0, 0, t134, t135, 0, -t64 * t247 - t63 * t141 + (-t141 * t86 + t247 * t87) * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t134, t135, 0, -t89 * t247 - t88 * t141 + (-t108 * t141 + t247 * t109) * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t15, 0, -t16, -t132, -t147, t1, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t20, 0, -t21, 0, -t7, t6, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t64, t63, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t89, t88, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t134, -t135, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t2;