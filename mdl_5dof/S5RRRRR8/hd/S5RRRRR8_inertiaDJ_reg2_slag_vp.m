% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S5RRRRR8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4,d5]';
% 
% Output:
% MMD_reg [((5+1)*5/2)x(5*10)]
%   inertial parameter regressor of inertia matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 22:26
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S5RRRRR8_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR8_inertiaDJ_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRR8_inertiaDJ_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRRR8_inertiaDJ_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 22:25:47
% EndTime: 2019-12-31 22:25:58
% DurationCPUTime: 3.16s
% Computational Cost: add. (5141->289), mult. (11541->502), div. (0->0), fcn. (10686->8), ass. (0->173)
t132 = sin(qJ(2));
t233 = -pkin(7) - pkin(6);
t109 = t233 * t132;
t134 = cos(qJ(2));
t111 = t233 * t134;
t230 = cos(qJ(3));
t178 = qJD(3) * t230;
t131 = sin(qJ(3));
t202 = qJD(3) * t131;
t154 = t109 * t178 + t111 * t202;
t166 = t233 * t230;
t205 = t131 * t134;
t168 = t233 * t205;
t137 = t154 + (t132 * t166 + t168) * qJD(2);
t103 = t230 * t132 + t205;
t185 = t230 * t134;
t206 = t131 * t132;
t101 = -t185 + t206;
t124 = -t134 * pkin(2) - pkin(1);
t157 = t101 * pkin(3) + t124;
t149 = -t103 * pkin(8) + t157;
t240 = -qJD(4) * t149 - t137;
t130 = sin(qJ(4));
t127 = t130 ^ 2;
t133 = cos(qJ(4));
t128 = t133 ^ 2;
t203 = t127 - t128;
t236 = t203 * qJD(4);
t229 = cos(qJ(5));
t175 = t229 * qJD(5);
t239 = t229 * qJD(4) + t175;
t200 = qJD(4) * t130;
t182 = t103 * t200;
t163 = qJD(2) * t185;
t235 = qJD(2) + qJD(3);
t73 = -t134 * t178 + t206 * t235 - t163;
t211 = t133 * t73;
t151 = t182 + t211;
t183 = t229 * t133;
t129 = sin(qJ(5));
t208 = t129 * t130;
t238 = t183 - t208;
t207 = t131 * t109;
t81 = -t230 * t111 + t207;
t213 = t130 * t81;
t40 = t133 * t149 - t213;
t41 = t130 * t149 + t133 * t81;
t237 = -t130 * t40 + t133 * t41;
t234 = qJD(4) + qJD(5);
t232 = -pkin(9) - pkin(8);
t74 = t235 * t103;
t231 = t74 * pkin(4);
t228 = pkin(2) * t131;
t227 = t133 * pkin(4);
t48 = qJD(2) * t207 + t81 * qJD(3) - t233 * t163;
t79 = -t230 * t109 - t111 * t131;
t226 = t79 * t48;
t121 = pkin(8) + t228;
t225 = -pkin(9) - t121;
t125 = qJD(4) * t133;
t214 = t130 * t73;
t152 = t103 * t125 - t214;
t22 = t152 * pkin(4) + t48;
t209 = t103 * t130;
t56 = pkin(4) * t209 + t79;
t184 = t229 * t130;
t102 = t129 * t133 + t184;
t72 = t234 * t102;
t224 = -t22 * t238 + t56 * t72;
t71 = -t133 * t239 + t208 * t234;
t223 = t22 * t102 - t56 * t71;
t222 = t79 * t125 + t48 * t130;
t190 = pkin(2) * t202;
t191 = pkin(4) * t200;
t105 = t190 + t191;
t195 = t230 * pkin(2);
t122 = -t195 - pkin(3);
t108 = t122 - t227;
t221 = -t105 * t238 + t108 * t72;
t220 = t105 * t102 - t108 * t71;
t123 = -pkin(3) - t227;
t219 = t123 * t72 - t191 * t238;
t218 = t102 * t191 - t123 * t71;
t217 = pkin(2) * qJD(3);
t216 = t103 * t73;
t210 = t133 * t74;
t204 = t122 * t125 + t130 * t190;
t199 = qJD(5) * t129;
t198 = t132 * qJD(2);
t197 = t134 * qJD(2);
t196 = -0.2e1 * pkin(1) * qJD(2);
t54 = 0.2e1 * t101 * t74;
t194 = pkin(2) * t198;
t193 = pkin(3) * t200;
t192 = pkin(3) * t125;
t189 = pkin(4) * t199;
t188 = t130 * t211;
t187 = t129 * t232;
t186 = t103 * t208;
t69 = t79 * t200;
t181 = t130 * t125;
t180 = t132 * t197;
t140 = t101 * pkin(4) - t213 + (t232 * t103 + t157) * t133;
t136 = t229 * t140;
t33 = -pkin(9) * t209 + t41;
t16 = -t129 * t33 + t136;
t139 = t129 * t140;
t17 = t229 * t33 + t139;
t148 = pkin(3) * t74 + pkin(8) * t73 + t194;
t15 = -t81 * t125 + t240 * t130 + t133 * t148;
t135 = pkin(9) * t151 + t15 + t231;
t14 = -t130 * t148 + t240 * t133 + t81 * t200;
t141 = -t152 * pkin(9) - t14;
t3 = -qJD(5) * t136 - t129 * t135 - t229 * t141 + t33 * t199;
t4 = -qJD(5) * t139 - t129 * t141 + t229 * t135 - t33 * t175;
t179 = -t4 * t102 + t16 * t71 - t17 * t72 - t238 * t3;
t177 = t225 * t130;
t174 = qJD(4) * t225;
t171 = pkin(2) * t178;
t160 = t133 * t171;
t143 = t130 * t174 + t160;
t161 = t130 * t171;
t144 = t133 * t174 - t161;
t156 = t229 * t177;
t126 = t133 * pkin(9);
t95 = t121 * t133 + t126;
t27 = -qJD(5) * t156 - t129 * t144 - t229 * t143 + t95 * t199;
t164 = t129 * t177;
t28 = -qJD(5) * t164 - t129 * t143 + t229 * t144 - t95 * t175;
t67 = -t129 * t95 + t156;
t68 = t229 * t95 + t164;
t173 = -t28 * t102 - t238 * t27 + t67 * t71 - t68 * t72;
t110 = t133 * pkin(8) + t126;
t165 = t232 * t229;
t159 = t130 * t165;
t46 = t110 * t199 - t187 * t125 - t159 * t234;
t169 = t130 * t187;
t80 = t229 * t110 + t169;
t47 = -t80 * qJD(5) + (t133 * t165 - t169) * qJD(4);
t78 = -t129 * t110 + t159;
t172 = -t47 * t102 - t238 * t46 + t78 * t71 - t80 * t72;
t170 = pkin(4) * t175;
t98 = t103 ^ 2;
t167 = t98 * t181;
t162 = t130 * t41 + t133 * t40;
t158 = t101 * t121 - t103 * t122;
t155 = t122 * t200 - t133 * t190;
t153 = t101 * t200 - t210;
t150 = (t127 + t128) * t230;
t147 = (-t230 * t101 + t103 * t131) * qJD(3);
t5 = -t162 * qJD(4) - t130 * t15 - t133 * t14;
t142 = pkin(2) * t147 - t121 * t74 - t122 * t73;
t114 = -0.2e1 * t181;
t113 = 0.2e1 * t181;
t99 = -0.2e1 * t236;
t91 = t150 * t217;
t61 = t103 * t183 - t186;
t60 = t102 * t103;
t55 = -0.2e1 * t102 * t71;
t53 = -0.2e1 * t238 * t72;
t52 = t101 * t125 + t130 * t74;
t39 = t103 * t236 + t188;
t32 = -t101 * t72 + t238 * t74;
t31 = -t101 * t71 + t102 * t74;
t30 = -0.4e1 * t103 * t181 + t203 * t73;
t29 = -0.2e1 * t102 * t72 - 0.2e1 * t238 * t71;
t25 = (t229 * t71 - t129 * t72 + (t102 * t129 + t229 * t238) * qJD(5)) * pkin(4);
t19 = -t73 * t184 - t129 * t182 - qJD(5) * t186 + (t239 * t103 - t129 * t73) * t133;
t18 = t72 * t103 + t238 * t73;
t11 = -t19 * t238 + t60 * t72;
t10 = -t102 * t18 - t61 * t71;
t6 = -t102 * t19 - t18 * t238 + t60 * t71 - t61 * t72;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t180, 0.2e1 * (-t132 ^ 2 + t134 ^ 2) * qJD(2), 0, -0.2e1 * t180, 0, 0, t132 * t196, t134 * t196, 0, 0, -0.2e1 * t216, 0.2e1 * t101 * t73 - 0.2e1 * t103 * t74, 0, t54, 0, 0, 0.2e1 * t101 * t194 + 0.2e1 * t124 * t74, 0.2e1 * t103 * t194 - 0.2e1 * t124 * t73, -0.2e1 * t101 * t137 + 0.2e1 * t48 * t103 - 0.2e1 * t79 * t73 - 0.2e1 * t81 * t74, 0.2e1 * t81 * t154 + 0.2e1 * t226 + 0.2e1 * (t81 * t168 + (t124 * pkin(2) + t166 * t81) * t132) * qJD(2), -0.2e1 * t128 * t216 - 0.2e1 * t167, 0.4e1 * t103 * t188 + 0.2e1 * t236 * t98, -0.2e1 * t101 * t151 + 0.2e1 * t103 * t210, -0.2e1 * t127 * t216 + 0.2e1 * t167, -0.2e1 * t101 * t152 - 0.2e1 * t209 * t74, t54, 0.2e1 * t101 * t15 + 0.2e1 * t222 * t103 - 0.2e1 * t79 * t214 + 0.2e1 * t40 * t74, -0.2e1 * t79 * t211 + 0.2e1 * t101 * t14 - 0.2e1 * t41 * t74 + 0.2e1 * (t48 * t133 - t69) * t103, 0.2e1 * t162 * t73 + 0.2e1 * (-qJD(4) * t237 + t130 * t14 - t133 * t15) * t103, -0.2e1 * t14 * t41 + 0.2e1 * t15 * t40 + 0.2e1 * t226, -0.2e1 * t61 * t18, 0.2e1 * t18 * t60 - 0.2e1 * t19 * t61, -0.2e1 * t101 * t18 + 0.2e1 * t61 * t74, 0.2e1 * t60 * t19, -0.2e1 * t101 * t19 - 0.2e1 * t60 * t74, t54, 0.2e1 * t101 * t4 + 0.2e1 * t16 * t74 + 0.2e1 * t19 * t56 + 0.2e1 * t22 * t60, 0.2e1 * t101 * t3 - 0.2e1 * t17 * t74 - 0.2e1 * t18 * t56 + 0.2e1 * t22 * t61, 0.2e1 * t16 * t18 - 0.2e1 * t17 * t19 + 0.2e1 * t3 * t60 - 0.2e1 * t4 * t61, 0.2e1 * t16 * t4 - 0.2e1 * t17 * t3 + 0.2e1 * t22 * t56; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t197, 0, -t198, 0, -pkin(6) * t197, pkin(6) * t198, 0, 0, 0, 0, -t73, 0, -t74, 0, -t48, -t137, (-t131 * t74 + t230 * t73 + t147) * pkin(2), t137 * t228 + t81 * t171 + t79 * t190 - t48 * t195, -t39, t30, t52, t39, -t153, 0, t69 + (-qJD(4) * t158 - t48) * t133 + t142 * t130, t133 * t142 + t158 * t200 + t222, t5, t48 * t122 + (t131 * t79 + t230 * t237) * t217 + t5 * t121, t10, t6, t31, t11, t32, 0, t101 * t28 + t105 * t60 + t108 * t19 + t67 * t74 + t224, t101 * t27 + t105 * t61 - t108 * t18 - t68 * t74 + t223, t18 * t67 - t19 * t68 + t27 * t60 - t28 * t61 + t179, t105 * t56 + t108 * t22 + t16 * t28 - t17 * t27 - t3 * t68 + t4 * t67; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t190, -0.2e1 * t171, 0, 0, t113, t99, 0, t114, 0, 0, 0.2e1 * t155, 0.2e1 * t204, 0.2e1 * t91, 0.2e1 * (t121 * t150 + t122 * t131) * t217, t55, t29, 0, t53, 0, 0, 0.2e1 * t221, 0.2e1 * t220, 0.2e1 * t173, 0.2e1 * t105 * t108 - 0.2e1 * t27 * t68 + 0.2e1 * t28 * t67; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t73, 0, -t74, 0, -t48, -t137, 0, 0, -t39, t30, t52, t39, -t153, 0, t69 + (pkin(3) * t73 - pkin(8) * t74) * t130 + (-t48 + (-pkin(3) * t103 - pkin(8) * t101) * qJD(4)) * t133, pkin(3) * t151 + pkin(8) * t153 + t222, t5, -pkin(3) * t48 + pkin(8) * t5, t10, t6, t31, t11, t32, 0, t101 * t47 + t123 * t19 + t191 * t60 + t74 * t78 + t224, t101 * t46 - t123 * t18 + t191 * t61 - t74 * t80 + t223, t18 * t78 - t19 * t80 + t46 * t60 - t47 * t61 + t179, t123 * t22 + t16 * t47 - t17 * t46 + t191 * t56 - t3 * t80 + t4 * t78; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t190, -t171, 0, 0, t113, t99, 0, t114, 0, 0, t155 - t193, -t192 + t204, t91, (-pkin(3) * t131 + pkin(8) * t150) * t217, t55, t29, 0, t53, 0, 0, t219 + t221, t218 + t220, t172 + t173, t105 * t123 + t108 * t191 - t27 * t80 + t28 * t78 - t46 * t68 + t47 * t67; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t113, t99, 0, t114, 0, 0, -0.2e1 * t193, -0.2e1 * t192, 0, 0, t55, t29, 0, t53, 0, 0, 0.2e1 * t219, 0.2e1 * t218, 0.2e1 * t172, 0.2e1 * t123 * t191 - 0.2e1 * t46 * t80 + 0.2e1 * t47 * t78; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t151, 0, -t152, t74, t15, t14, 0, 0, 0, 0, -t18, 0, -t19, t74, -t101 * t189 + t229 * t231 + t4, (-t101 * t175 - t129 * t74) * pkin(4) + t3, (t229 * t18 - t129 * t19 + (t129 * t61 - t229 * t60) * qJD(5)) * pkin(4), (t229 * t4 - t129 * t3 + (-t129 * t16 + t229 * t17) * qJD(5)) * pkin(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t125, 0, -t200, 0, -t121 * t125 - t161, t121 * t200 - t160, 0, 0, 0, 0, -t71, 0, -t72, 0, t28, t27, t25, (t229 * t28 - t129 * t27 + (-t129 * t67 + t229 * t68) * qJD(5)) * pkin(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t125, 0, -t200, 0, -pkin(8) * t125, pkin(8) * t200, 0, 0, 0, 0, -t71, 0, -t72, 0, t47, t46, t25, (t229 * t47 - t129 * t46 + (-t129 * t78 + t229 * t80) * qJD(5)) * pkin(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t189, -0.2e1 * t170, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t18, 0, -t19, t74, t4, t3, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t71, 0, -t72, 0, t28, t27, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t71, 0, -t72, 0, t47, t46, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t189, -t170, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg = t1;