% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RRPPRR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d5,d6,theta3,theta4]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 08:53
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRPPRR2_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRR2_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPPRR2_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPPRR2_inertiaDJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 08:52:36
% EndTime: 2019-03-09 08:52:48
% DurationCPUTime: 4.56s
% Computational Cost: add. (8886->294), mult. (19350->546), div. (0->0), fcn. (19861->10), ass. (0->148)
t104 = cos(pkin(11));
t107 = cos(qJ(2));
t106 = sin(qJ(2));
t189 = cos(pkin(10));
t173 = t189 * t106;
t188 = sin(pkin(10));
t153 = t188 * t107 + t173;
t103 = sin(pkin(11));
t100 = -t107 * pkin(2) - pkin(1);
t171 = t188 * t106;
t88 = -t189 * t107 + t171;
t136 = t88 * pkin(3) - t153 * qJ(4) + t100;
t197 = -qJ(3) - pkin(7);
t92 = t197 * t107;
t144 = t197 * t171 - t189 * t92;
t45 = -t103 * t144 + t104 * t136;
t117 = -t104 * t153 * pkin(8) + t88 * pkin(4) + t45;
t147 = t103 * t153;
t46 = t103 * t136 + t104 * t144;
t118 = -pkin(8) * t147 + t46;
t201 = sin(qJ(5));
t203 = cos(qJ(5));
t212 = -t203 * t117 + t201 * t118;
t141 = t153 * t201;
t164 = t88 * qJD(2);
t211 = qJD(5) * t141 + t164 * t203;
t142 = t153 * t203;
t210 = qJD(5) * t142 - t164 * t201;
t167 = t188 * pkin(2) + qJ(4);
t166 = pkin(8) + t167;
t162 = t104 * t166;
t163 = t103 * t166;
t209 = t201 * t162 + t203 * t163;
t87 = t153 * qJD(2);
t131 = t153 * t87 - t164 * t88;
t208 = -0.2e1 * t131;
t18 = t201 * t117 + t203 * t118;
t60 = t203 * t162 - t201 * t163;
t174 = qJD(2) * t197;
t154 = -t106 * qJD(3) + t107 * t174;
t155 = qJD(3) * t107 + t106 * t174;
t128 = t188 * t154 + t189 * t155;
t125 = t103 * t128;
t186 = t106 * qJD(2);
t183 = pkin(2) * t186;
t126 = t87 * pkin(3) + t164 * qJ(4) - t153 * qJD(4) + t183;
t29 = t104 * t126 - t125;
t124 = t104 * t128;
t30 = t103 * t126 + t124;
t207 = -t103 * t29 + t104 * t30;
t101 = t103 ^ 2;
t102 = t104 ^ 2;
t206 = 0.2e1 * (t101 + t102) * qJD(4);
t57 = -t189 * t154 + t188 * t155;
t66 = -t197 * t173 - t188 * t92;
t132 = t57 * t153 - t66 * t164;
t204 = t87 * pkin(5);
t202 = cos(qJ(6));
t105 = sin(qJ(6));
t177 = qJD(5) * t201;
t178 = qJD(5) * t203;
t165 = t103 * t177 - t104 * t178;
t193 = t103 * t178 + t104 * t177;
t160 = t201 * t103 - t203 * t104;
t89 = t203 * t103 + t201 * t104;
t62 = -t105 * t160 + t202 * t89;
t44 = t62 * qJD(6) - t105 * t165 + t202 * t193;
t145 = t202 * t160;
t61 = t105 * t89 + t145;
t200 = t61 * t44;
t187 = qJD(6) * t105;
t43 = qJD(6) * t145 + t105 * t193 + t202 * t165 + t89 * t187;
t199 = t62 * t43;
t198 = t66 * t57;
t134 = -t211 * t103 + t210 * t104;
t37 = t210 * t103 + t211 * t104;
t122 = t103 * t142 + t104 * t141;
t58 = -t103 * t141 + t104 * t142;
t39 = -t105 * t122 + t202 * t58;
t12 = t39 * qJD(6) - t105 * t37 + t202 * t134;
t121 = t202 * t122;
t38 = t105 * t58 + t121;
t196 = -t62 * t12 + t43 * t38;
t194 = t165 * t122 - t89 * t134;
t191 = t103 * t87;
t185 = t107 * qJD(2);
t63 = 0.2e1 * t88 * t87;
t184 = -0.2e1 * pkin(1) * qJD(2);
t182 = pkin(5) * t187;
t181 = t193 * pkin(5);
t180 = t106 * t185;
t179 = qJD(4) * t201;
t176 = qJD(6) * t202;
t175 = t203 * qJD(4);
t170 = pkin(5) * t176;
t99 = -t189 * pkin(2) - pkin(3);
t11 = qJD(6) * t121 + t105 * t134 + t58 * t187 + t202 * t37;
t169 = -t11 * t61 + t39 * t44;
t168 = t43 * t88 - t62 * t87;
t54 = pkin(4) * t147 + t66;
t120 = t164 * pkin(8) + t126;
t113 = t87 * pkin(4) + t120 * t104 - t125;
t114 = t120 * t103 + t124;
t9 = -t18 * qJD(5) + t203 * t113 - t201 * t114;
t108 = t37 * pkin(9) + t204 + t9;
t111 = t88 * pkin(5) - t58 * pkin(9) - t212;
t109 = t202 * t111;
t8 = t212 * qJD(5) - t201 * t113 - t203 * t114;
t112 = -t134 * pkin(9) - t8;
t16 = -t122 * pkin(9) + t18;
t1 = -qJD(6) * t109 - t105 * t108 - t202 * t112 + t16 * t187;
t91 = -t104 * pkin(4) + t99;
t161 = t89 * t165;
t159 = t101 * t164;
t158 = t102 * t164;
t157 = t103 * t164;
t156 = t104 * t164;
t152 = t103 * t156;
t146 = -t165 * t88 + t89 * t87;
t143 = t160 * t193;
t47 = -pkin(4) * t157 + t57;
t138 = t160 * t37 - t58 * t193;
t137 = t153 * t164;
t135 = -0.2e1 * t137;
t133 = -qJD(4) * t88 - t99 * t164 - t167 * t87;
t51 = t209 * qJD(5) + t103 * t179 - t104 * t175;
t130 = t193 * pkin(9) + t51;
t129 = -t89 * pkin(9) - t209;
t127 = t105 * t129;
t123 = t202 * t129;
t52 = -t60 * qJD(5) - t103 * t175 - t104 * t179;
t119 = t165 * pkin(9) + t52;
t110 = t105 * t111;
t2 = -qJD(6) * t110 - t105 * t112 + t202 * t108 - t16 * t176;
t77 = t104 * t87;
t67 = t160 * pkin(5) + t91;
t53 = -t160 * pkin(9) + t60;
t48 = -t160 * t87 - t193 * t88;
t40 = t122 * pkin(5) + t54;
t25 = t202 * t53 + t127;
t24 = -t105 * t53 + t123;
t22 = -t44 * t88 - t61 * t87;
t20 = t134 * pkin(5) + t47;
t14 = -qJD(6) * t127 + t105 * t130 + t202 * t119 - t53 * t176;
t13 = -qJD(6) * t123 - t105 * t119 + t202 * t130 + t53 * t187;
t7 = t202 * t16 + t110;
t6 = -t105 * t16 + t109;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t180, 0.2e1 * (-t106 ^ 2 + t107 ^ 2) * qJD(2), 0, -0.2e1 * t180, 0, 0, t106 * t184, t107 * t184, 0, 0, t135, t208, 0, t63, 0, 0, 0.2e1 * t100 * t87 + 0.2e1 * t88 * t183, 0.2e1 * t106 * pkin(2) * t87 - 0.2e1 * t100 * t164, -0.2e1 * t128 * t88 - 0.2e1 * t144 * t87 + 0.2e1 * t132, 0.2e1 * t100 * t183 + 0.2e1 * t144 * t128 + 0.2e1 * t198, t102 * t135, 0.4e1 * t104 * t103 * t137, 0.2e1 * t131 * t104, t101 * t135, t103 * t208, t63, 0.2e1 * t132 * t103 + 0.2e1 * t29 * t88 + 0.2e1 * t45 * t87, 0.2e1 * t132 * t104 - 0.2e1 * t30 * t88 - 0.2e1 * t46 * t87, 0.2e1 * (-t29 * t153 + t45 * t164) * t104 + 0.2e1 * (-t30 * t153 + t46 * t164) * t103, 0.2e1 * t29 * t45 + 0.2e1 * t30 * t46 + 0.2e1 * t198, -0.2e1 * t58 * t37, 0.2e1 * t122 * t37 - 0.2e1 * t134 * t58, -0.2e1 * t37 * t88 + 0.2e1 * t58 * t87, 0.2e1 * t122 * t134, -0.2e1 * t122 * t87 - 0.2e1 * t134 * t88, t63, 0.2e1 * t122 * t47 + 0.2e1 * t134 * t54 - 0.2e1 * t212 * t87 + 0.2e1 * t9 * t88, -0.2e1 * t18 * t87 - 0.2e1 * t37 * t54 + 0.2e1 * t47 * t58 + 0.2e1 * t8 * t88, 0.2e1 * t122 * t8 - 0.2e1 * t134 * t18 - 0.2e1 * t212 * t37 - 0.2e1 * t9 * t58, -0.2e1 * t18 * t8 - 0.2e1 * t212 * t9 + 0.2e1 * t47 * t54, -0.2e1 * t39 * t11, 0.2e1 * t11 * t38 - 0.2e1 * t12 * t39, -0.2e1 * t11 * t88 + 0.2e1 * t39 * t87, 0.2e1 * t38 * t12, -0.2e1 * t12 * t88 - 0.2e1 * t38 * t87, t63, 0.2e1 * t12 * t40 + 0.2e1 * t2 * t88 + 0.2e1 * t20 * t38 + 0.2e1 * t6 * t87, 0.2e1 * t1 * t88 - 0.2e1 * t11 * t40 + 0.2e1 * t20 * t39 - 0.2e1 * t7 * t87, 0.2e1 * t1 * t38 + 0.2e1 * t11 * t6 - 0.2e1 * t12 * t7 - 0.2e1 * t2 * t39, -0.2e1 * t1 * t7 + 0.2e1 * t2 * t6 + 0.2e1 * t20 * t40; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t185, 0, -t186, 0, -pkin(7) * t185, pkin(7) * t186, 0, 0, 0, 0, -t164, 0, -t87, 0, -t57, -t128 (t189 * t164 - t188 * t87) * pkin(2) (t128 * t188 - t57 * t189) * pkin(2), -t152, t159 - t158, t191, t152, t77, 0, t133 * t103 - t57 * t104, t57 * t103 + t133 * t104, t207, t57 * t99 + (-t103 * t45 + t104 * t46) * qJD(4) + t207 * t167, -t58 * t165 - t37 * t89, t138 + t194, t146, t122 * t193 + t134 * t160, t48, 0, t91 * t134 + t47 * t160 + t54 * t193 - t209 * t87 + t52 * t88, -t54 * t165 - t91 * t37 + t47 * t89 + t51 * t88 - t60 * t87, t51 * t122 - t60 * t134 + t8 * t160 - t165 * t212 - t18 * t193 - t209 * t37 - t52 * t58 - t9 * t89, -t18 * t51 - t209 * t9 - t212 * t52 + t47 * t91 - t60 * t8, -t11 * t62 - t39 * t43, -t169 + t196, -t168, t12 * t61 + t38 * t44, t22, 0, t67 * t12 + t14 * t88 + t38 * t181 + t20 * t61 + t24 * t87 + t40 * t44, -t67 * t11 + t13 * t88 + t39 * t181 + t20 * t62 - t25 * t87 - t40 * t43, t1 * t61 + t11 * t24 - t12 * t25 + t13 * t38 - t14 * t39 - t2 * t62 + t43 * t6 - t44 * t7, -t1 * t25 - t7 * t13 + t6 * t14 + t40 * t181 + t2 * t24 + t20 * t67; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t206, t167 * t206, -0.2e1 * t161, 0.2e1 * t160 * t165 - 0.2e1 * t89 * t193, 0, 0.2e1 * t143, 0, 0, 0.2e1 * t91 * t193, -0.2e1 * t91 * t165, 0.2e1 * t51 * t160 - 0.2e1 * t165 * t209 - 0.2e1 * t60 * t193 - 0.2e1 * t52 * t89, -0.2e1 * t209 * t52 - 0.2e1 * t51 * t60, -0.2e1 * t199, 0.2e1 * t61 * t43 - 0.2e1 * t62 * t44, 0, 0.2e1 * t200, 0, 0, 0.2e1 * t61 * t181 + 0.2e1 * t67 * t44, 0.2e1 * t62 * t181 - 0.2e1 * t67 * t43, 0.2e1 * t13 * t61 - 0.2e1 * t14 * t62 + 0.2e1 * t24 * t43 - 0.2e1 * t25 * t44, -0.2e1 * t25 * t13 + 0.2e1 * t24 * t14 + 0.2e1 * t67 * t181; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t87, -t164, 0, t183, 0, 0, 0, 0, 0, 0, t77, -t191, t159 + t158, t103 * t30 + t104 * t29, 0, 0, 0, 0, 0, 0, t48, -t146, -t138 + t194, -t9 * t160 - t18 * t165 + t193 * t212 - t8 * t89, 0, 0, 0, 0, 0, 0, t22, t168, t169 + t196, -t1 * t62 - t2 * t61 - t43 * t7 - t44 * t6; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t52 * t160 - t60 * t165 + t193 * t209 - t51 * t89, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t13 * t62 - t14 * t61 - t24 * t44 - t25 * t43; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t161 + 0.2e1 * t143, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t199 + 0.2e1 * t200; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t157, -t156, 0, t57, 0, 0, 0, 0, 0, 0, t134, -t37, 0, t47, 0, 0, 0, 0, 0, 0, t12, -t11, 0, t20; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t193, -t165, 0, 0, 0, 0, 0, 0, 0, 0, t44, -t43, 0, t181; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t37, 0, -t134, t87, t9, t8, 0, 0, 0, 0, -t11, 0, -t12, t87, -t88 * t182 + t202 * t204 + t2 (-t105 * t87 - t88 * t176) * pkin(5) + t1 (t202 * t11 - t105 * t12 + (t105 * t39 - t202 * t38) * qJD(6)) * pkin(5) (t202 * t2 - t1 * t105 + (-t105 * t6 + t202 * t7) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t165, 0, -t193, 0, t52, t51, 0, 0, 0, 0, -t43, 0, -t44, 0, t14, t13 (t202 * t43 - t105 * t44 + (t105 * t62 - t202 * t61) * qJD(6)) * pkin(5) (t202 * t14 - t105 * t13 + (-t105 * t24 + t202 * t25) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t193, t165, 0, 0, 0, 0, 0, 0, 0, 0, -t44, t43, 0 (-t202 * t44 - t105 * t43 + (t105 * t61 + t202 * t62) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t182, -0.2e1 * t170, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t11, 0, -t12, t87, t2, t1, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t43, 0, -t44, 0, t14, t13, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t44, t43, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t182, -t170, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t3;
