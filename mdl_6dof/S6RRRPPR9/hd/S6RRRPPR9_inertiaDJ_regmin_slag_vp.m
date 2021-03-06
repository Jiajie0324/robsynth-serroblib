% Calculate minimal parameter regressor of joint inertia matrix time derivative for
% S6RRRPPR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d6,theta4]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x32]
%   minimal parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 16:20
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRRPPR9_inertiaDJ_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR9_inertiaDJ_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPPR9_inertiaDJ_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPPR9_inertiaDJ_regmin_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 16:17:55
% EndTime: 2019-03-09 16:18:07
% DurationCPUTime: 3.93s
% Computational Cost: add. (4294->402), mult. (11939->718), div. (0->0), fcn. (11174->10), ass. (0->169)
t142 = sin(pkin(11));
t139 = t142 ^ 2;
t144 = cos(pkin(11));
t226 = (t144 ^ 2 + t139) * qJD(4);
t146 = sin(qJ(3));
t148 = cos(qJ(3));
t143 = sin(pkin(6));
t147 = sin(qJ(2));
t206 = t143 * t147;
t211 = cos(pkin(6));
t103 = t146 * t206 - t211 * t148;
t104 = t211 * t146 + t148 * t206;
t149 = cos(qJ(2));
t196 = qJD(2) * t149;
t177 = t143 * t196;
t68 = qJD(3) * t104 + t146 * t177;
t162 = qJ(4) * t68 + qJD(4) * t103;
t225 = t162 * t144;
t195 = qJD(3) * t146;
t224 = qJ(5) * t195 - t148 * qJD(5);
t220 = cos(qJ(6));
t174 = qJD(6) * t220;
t145 = sin(qJ(6));
t191 = qJD(6) * t145;
t102 = t142 * t174 - t144 * t191;
t110 = t220 * t142 - t145 * t144;
t173 = t142 * qJ(5) + pkin(3);
t111 = -pkin(4) * t144 - t173;
t210 = qJ(4) * t146;
t223 = qJD(3) * (-t111 * t148 + t210);
t222 = 0.2e1 * t143;
t221 = pkin(4) + pkin(5);
t219 = pkin(9) * t143;
t218 = -pkin(10) + qJ(4);
t197 = qJD(2) * t147;
t194 = qJD(3) * t148;
t183 = pkin(1) * t211;
t205 = t143 * t149;
t154 = pkin(8) * t205 + t147 * t183;
t90 = t211 * pkin(9) + t154;
t92 = (-pkin(2) * t149 - pkin(9) * t147 - pkin(1)) * t143;
t96 = (pkin(2) * t147 - pkin(9) * t149) * t143 * qJD(2);
t172 = qJD(2) * t211;
t168 = t149 * t172;
t178 = t143 * t197;
t97 = -pkin(1) * t168 + pkin(8) * t178;
t32 = -t146 * t96 + t148 * t97 - t92 * t194 + t90 * t195;
t28 = (qJ(4) * t197 - qJD(4) * t149) * t143 - t32;
t69 = -qJD(3) * t103 + t148 * t177;
t98 = t154 * qJD(2);
t31 = t68 * pkin(3) - t69 * qJ(4) - t104 * qJD(4) + t98;
t12 = t142 * t31 + t144 * t28;
t89 = -t211 * pkin(2) + pkin(8) * t206 - t149 * t183;
t41 = t103 * pkin(3) - t104 * qJ(4) + t89;
t215 = t146 * t92 + t148 * t90;
t42 = -qJ(4) * t205 + t215;
t24 = t142 * t41 + t144 * t42;
t50 = t142 * t69 - t144 * t178;
t66 = t104 * t142 + t144 * t205;
t217 = (-qJ(4) * t50 - qJD(4) * t66) * t144;
t216 = -t146 * t90 + t148 * t92;
t214 = t12 * t144;
t33 = t146 * t97 + t148 * t96 - t90 * t194 - t92 * t195;
t155 = pkin(3) * t178 + t33;
t213 = t155 * t142;
t212 = t155 * t144;
t209 = qJ(5) * t144;
t208 = t142 * t146;
t207 = t142 * t148;
t100 = -t146 * qJD(4) + (pkin(3) * t146 - qJ(4) * t148) * qJD(3);
t204 = t144 * t100;
t203 = t144 * t146;
t202 = t144 * t148;
t67 = t104 * t144 - t142 * t205;
t200 = t67 * qJD(5);
t166 = -pkin(3) * t148 - t210;
t113 = -pkin(2) + t166;
t132 = pkin(9) * t202;
t83 = t142 * t113 + t132;
t199 = qJ(4) * t226;
t193 = qJD(3) * t149;
t192 = qJD(4) * t148;
t190 = t139 * qJD(5);
t189 = t142 * qJD(4);
t188 = t142 * qJD(5);
t186 = -0.2e1 * pkin(2) * qJD(3);
t21 = t103 * qJ(5) + t24;
t129 = pkin(9) * t207;
t43 = pkin(3) * t205 - t216;
t185 = pkin(9) * t195;
t137 = pkin(9) * t194;
t184 = -pkin(9) * t142 - pkin(4);
t181 = t220 * t144;
t140 = t143 ^ 2;
t180 = t140 * t196;
t124 = t142 * t194;
t126 = t144 * t194;
t176 = t146 * t194;
t175 = qJD(3) * t220;
t11 = -t142 * t28 + t144 * t31;
t23 = -t142 * t42 + t144 * t41;
t8 = t68 * qJ(5) + t103 * qJD(5) + t12;
t82 = t113 * t144 - t129;
t171 = t147 * t180;
t170 = t148 * t175;
t73 = -qJ(5) * t148 + t83;
t167 = -qJD(5) * t203 + t137;
t165 = pkin(4) * t142 - t209;
t64 = t142 * t185 + t204;
t88 = t142 * t100;
t65 = -t144 * t185 + t88;
t164 = -t142 * t64 + t144 * t65;
t51 = t142 * t178 + t144 * t69;
t163 = qJ(4) * t51 + qJD(4) * t67;
t160 = t67 * qJ(5) - t43;
t159 = pkin(10) * t50 + t8;
t36 = t67 * t145 - t66 * t220;
t37 = t66 * t145 + t67 * t220;
t16 = -t67 * pkin(10) - t221 * t103 - t23;
t17 = pkin(10) * t66 + t21;
t4 = t145 * t16 + t220 * t17;
t138 = t148 * pkin(4);
t57 = t148 * pkin(5) + t129 + t138 + (-pkin(10) * t146 - t113) * t144;
t60 = pkin(10) * t208 + t73;
t35 = t145 * t57 + t220 * t60;
t158 = -t221 * t142 + t209;
t109 = t145 * t142 + t181;
t118 = t218 * t142;
t119 = t218 * t144;
t71 = t145 * t118 + t220 * t119;
t157 = t146 * t193 + t148 * t197;
t156 = t146 * t197 - t148 * t193;
t101 = t109 * qJD(6);
t153 = -t51 * pkin(10) - t221 * t68 - t11;
t152 = t51 * qJ(5) + t155 + t200;
t151 = -t88 - (-pkin(9) * t203 + pkin(10) * t207) * qJD(3) - t224;
t150 = -t204 + (-pkin(10) * t202 + (-pkin(5) + t184) * t146) * qJD(3);
t123 = t148 * t189;
t108 = 0.2e1 * t226;
t105 = t221 * t144 + t173;
t94 = t109 * t146;
t93 = t110 * t146;
t91 = (pkin(9) + t165) * t146;
t74 = t138 - t82;
t72 = (-pkin(9) + t158) * t146;
t70 = t220 * t118 - t145 * t119;
t62 = t165 * t194 + t167;
t58 = t184 * t195 - t204;
t56 = t158 * t194 - t167;
t55 = t65 + t224;
t54 = t146 * t101 + t145 * t126 - t142 * t170;
t53 = -t102 * t146 - t145 * t124 - t144 * t170;
t49 = qJD(4) * t110 - qJD(6) * t71;
t48 = -qJD(4) * t181 - t118 * t174 + t119 * t191 - t145 * t189;
t34 = -t145 * t60 + t220 * t57;
t25 = pkin(4) * t66 - t160;
t22 = -pkin(4) * t103 - t23;
t20 = -t221 * t66 + t160;
t19 = -t36 * qJD(6) + t50 * t145 + t51 * t220;
t18 = t37 * qJD(6) + t51 * t145 - t50 * t220;
t15 = -t35 * qJD(6) + t145 * t151 + t220 * t150;
t14 = -t145 * t150 + t220 * t151 - t57 * t174 + t60 * t191;
t10 = pkin(4) * t50 - t152;
t9 = -pkin(4) * t68 - t11;
t7 = -t221 * t50 + t152;
t3 = -t145 * t17 + t220 * t16;
t2 = -t4 * qJD(6) - t145 * t159 + t220 * t153;
t1 = -t145 * t153 - t220 * t159 - t16 * t174 + t17 * t191;
t5 = [0, 0, 0, 0.2e1 * t171, 0.2e1 * (-t147 ^ 2 + t149 ^ 2) * t140 * qJD(2), t168 * t222, -0.2e1 * t172 * t206, 0, -0.2e1 * t140 * pkin(1) * t197 - 0.2e1 * t98 * t211, -0.2e1 * pkin(1) * t180 + 0.2e1 * t97 * t211, 0.2e1 * t104 * t69, -0.2e1 * t103 * t69 - 0.2e1 * t104 * t68 (t104 * t197 - t149 * t69) * t222 (-t103 * t197 + t149 * t68) * t222, -0.2e1 * t171, 0.2e1 * t98 * t103 + 0.2e1 * t89 * t68 + 0.2e1 * (-t33 * t149 + t216 * t197) * t143, 0.2e1 * t98 * t104 + 0.2e1 * t89 * t69 + 0.2e1 * (-t32 * t149 - t215 * t197) * t143, 0.2e1 * t103 * t11 - 0.2e1 * t155 * t66 + 0.2e1 * t23 * t68 + 0.2e1 * t43 * t50, -0.2e1 * t103 * t12 - 0.2e1 * t155 * t67 - 0.2e1 * t24 * t68 + 0.2e1 * t43 * t51, -0.2e1 * t11 * t67 - 0.2e1 * t12 * t66 - 0.2e1 * t23 * t51 - 0.2e1 * t24 * t50, 0.2e1 * t11 * t23 + 0.2e1 * t12 * t24 - 0.2e1 * t155 * t43, 0.2e1 * t10 * t66 - 0.2e1 * t103 * t9 - 0.2e1 * t22 * t68 + 0.2e1 * t25 * t50, -0.2e1 * t21 * t50 + 0.2e1 * t22 * t51 - 0.2e1 * t66 * t8 + 0.2e1 * t67 * t9, -0.2e1 * t10 * t67 + 0.2e1 * t103 * t8 + 0.2e1 * t21 * t68 - 0.2e1 * t25 * t51, 0.2e1 * t10 * t25 + 0.2e1 * t21 * t8 + 0.2e1 * t22 * t9, 0.2e1 * t37 * t19, -0.2e1 * t18 * t37 - 0.2e1 * t19 * t36, -0.2e1 * t103 * t19 - 0.2e1 * t37 * t68, 0.2e1 * t103 * t18 + 0.2e1 * t36 * t68, 0.2e1 * t103 * t68, -0.2e1 * t103 * t2 + 0.2e1 * t18 * t20 - 0.2e1 * t3 * t68 + 0.2e1 * t36 * t7, -0.2e1 * t1 * t103 + 0.2e1 * t19 * t20 + 0.2e1 * t37 * t7 + 0.2e1 * t4 * t68; 0, 0, 0, 0, 0, t177, -t178, 0, -t98, t97, t104 * t194 + t146 * t69, -t146 * t68 + t69 * t148 + (-t103 * t148 - t104 * t146) * qJD(3), t156 * t143, t157 * t143, 0, -pkin(2) * t68 - t98 * t148 - t156 * t219 + t89 * t195, -pkin(2) * t69 + t98 * t146 - t157 * t219 + t89 * t194, t64 * t103 - t11 * t148 + t82 * t68 + (pkin(9) * t50 - t213) * t146 + (t146 * t23 + (pkin(9) * t66 + t142 * t43) * t148) * qJD(3), -t65 * t103 + t12 * t148 - t83 * t68 + (pkin(9) * t51 - t212) * t146 + (-t146 * t24 + (pkin(9) * t67 + t144 * t43) * t148) * qJD(3), -t83 * t50 - t82 * t51 - t64 * t67 - t65 * t66 + (-t11 * t144 - t12 * t142) * t146 + (-t142 * t24 - t144 * t23) * t194, t11 * t82 + t12 * t83 + t23 * t64 + t24 * t65 + (-t146 * t155 + t43 * t194) * pkin(9), t10 * t208 - t58 * t103 + t9 * t148 + t91 * t50 + t62 * t66 - t74 * t68 + (-t146 * t22 + t207 * t25) * qJD(3), -t73 * t50 + t74 * t51 - t55 * t66 + t58 * t67 + (-t142 * t8 + t144 * t9) * t146 + (-t142 * t21 + t144 * t22) * t194, -t10 * t203 + t55 * t103 - t8 * t148 - t91 * t51 - t62 * t67 + t73 * t68 + (t146 * t21 - t202 * t25) * qJD(3), t10 * t91 + t21 * t55 + t22 * t58 + t25 * t62 + t73 * t8 + t74 * t9, t19 * t94 - t37 * t53, -t18 * t94 + t19 * t93 + t36 * t53 - t37 * t54, t103 * t53 + t148 * t19 - t195 * t37 - t68 * t94, t103 * t54 - t148 * t18 + t195 * t36 - t68 * t93, t103 * t195 - t148 * t68, -t103 * t15 + t148 * t2 + t18 * t72 - t195 * t3 + t20 * t54 - t34 * t68 + t36 * t56 - t7 * t93, t1 * t148 - t103 * t14 + t19 * t72 + t195 * t4 - t20 * t53 + t35 * t68 + t37 * t56 + t7 * t94; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t176, 0.2e1 * (-t146 ^ 2 + t148 ^ 2) * qJD(3), 0, 0, 0, t146 * t186, t148 * t186, -0.2e1 * t64 * t148 + 0.2e1 * (t82 + 0.2e1 * t129) * t195, 0.2e1 * t65 * t148 + 0.2e1 * (-t83 + 0.2e1 * t132) * t195, 0.2e1 * (-t142 * t65 - t144 * t64) * t146 + 0.2e1 * (-t142 * t83 - t144 * t82) * t194, 0.2e1 * pkin(9) ^ 2 * t176 + 0.2e1 * t64 * t82 + 0.2e1 * t65 * t83, 0.2e1 * t62 * t208 + 0.2e1 * t58 * t148 + 0.2e1 * (-t146 * t74 + t207 * t91) * qJD(3), 0.2e1 * (-t142 * t55 + t144 * t58) * t146 + 0.2e1 * (-t142 * t73 + t144 * t74) * t194, -0.2e1 * t62 * t203 - 0.2e1 * t55 * t148 + 0.2e1 * (t146 * t73 - t202 * t91) * qJD(3), 0.2e1 * t55 * t73 + 0.2e1 * t58 * t74 + 0.2e1 * t62 * t91, -0.2e1 * t94 * t53, -0.2e1 * t53 * t93 - 0.2e1 * t54 * t94, -0.2e1 * t148 * t53 - 0.2e1 * t195 * t94, -0.2e1 * t148 * t54 - 0.2e1 * t195 * t93, -0.2e1 * t176, 0.2e1 * t148 * t15 - 0.2e1 * t195 * t34 + 0.2e1 * t54 * t72 - 0.2e1 * t56 * t93, 0.2e1 * t14 * t148 + 0.2e1 * t195 * t35 - 0.2e1 * t53 * t72 + 0.2e1 * t56 * t94; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t69, -t68, t178, t33, t32, -pkin(3) * t50 - t142 * t162 + t212, -pkin(3) * t51 - t213 - t225, t214 + (-t11 + t163) * t142 + t217, t155 * pkin(3) + (-t142 * t23 + t144 * t24) * qJD(4) + (-t11 * t142 + t214) * qJ(4), -t10 * t144 + t111 * t50 + (-qJD(5) * t66 - t162) * t142, t8 * t144 + (t163 + t9) * t142 + t217, -t111 * t51 + t225 + (-t10 + t200) * t142, t10 * t111 + (qJ(4) * t8 + qJD(4) * t21) * t144 + (qJ(4) * t9 + qJD(4) * t22 - qJD(5) * t25) * t142, -t101 * t37 + t110 * t19, t101 * t36 - t102 * t37 - t109 * t19 - t110 * t18, t101 * t103 - t110 * t68, t102 * t103 + t109 * t68, 0, t102 * t20 - t103 * t49 + t105 * t18 + t109 * t7 + t188 * t36 - t68 * t70, -t101 * t20 - t103 * t48 + t105 * t19 + t110 * t7 + t188 * t37 + t68 * t71; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t194, -t195, 0, -t137, t185, t123 + (t142 * t166 - t132) * qJD(3), t144 * t192 + (t144 * t166 + t129) * qJD(3), t164, -pkin(3) * t137 + (-t142 * t82 + t144 * t83) * qJD(4) + t164 * qJ(4), -t142 * t223 - t62 * t144 - t146 * t190 + t123, t142 * t58 + t144 * t55, -t62 * t142 + (t146 * t188 - t192 + t223) * t144, t62 * t111 + (qJ(4) * t55 + qJD(4) * t73) * t144 + (qJ(4) * t58 + qJD(4) * t74 - qJD(5) * t91) * t142, -t101 * t94 - t110 * t53, -t101 * t93 - t102 * t94 + t109 * t53 - t110 * t54, -t101 * t148 - t110 * t195, -t102 * t148 + t109 * t195, 0, t102 * t72 + t105 * t54 + t109 * t56 + t148 * t49 - t188 * t93 - t195 * t70, -t101 * t72 - t105 * t53 + t110 * t56 + t148 * t48 + t188 * t94 + t195 * t71; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t108, 0.2e1 * t199, 0.2e1 * t144 * t188, t108, 0.2e1 * t190, -0.2e1 * t111 * t188 + 0.2e1 * t199, -0.2e1 * t110 * t101, 0.2e1 * t101 * t109 - 0.2e1 * t102 * t110, 0, 0, 0, 0.2e1 * t102 * t105 + 0.2e1 * t109 * t188, -0.2e1 * t101 * t105 + 0.2e1 * t110 * t188; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t50, t51, 0, -t155, t50, 0, -t51, t10, 0, 0, 0, 0, 0, -t18, -t19; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t124, t126, 0, t137, t124, 0, -t126, t62, 0, 0, 0, 0, 0, -t54, t53; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t188, 0, 0, 0, 0, 0, -t102, t101; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t68, t51, 0, t9, 0, 0, 0, 0, 0, t103 * t191 - t220 * t68, t103 * t174 + t145 * t68; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t195, t126, 0, t58, 0, 0, 0, 0, 0, -t146 * t175 - t148 * t191, t145 * t195 - t148 * t174; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t189, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t19, -t18, -t68, t2, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t53, -t54, -t195, t15, t14; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t101, -t102, 0, t49, t48; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t191, -t174; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t5;
