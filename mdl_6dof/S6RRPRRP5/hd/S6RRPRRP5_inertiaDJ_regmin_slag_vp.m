% Calculate minimal parameter regressor of joint inertia matrix time derivative for
% S6RRPRRP5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,theta3]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x28]
%   minimal parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 12:06
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRPRRP5_inertiaDJ_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP5_inertiaDJ_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP5_inertiaDJ_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRRP5_inertiaDJ_regmin_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 12:05:26
% EndTime: 2019-03-09 12:05:34
% DurationCPUTime: 2.93s
% Computational Cost: add. (4871->306), mult. (13508->553), div. (0->0), fcn. (13364->10), ass. (0->167)
t115 = cos(pkin(6));
t117 = sin(qJ(4));
t120 = cos(qJ(4));
t112 = sin(pkin(11));
t113 = sin(pkin(6));
t114 = cos(pkin(11));
t118 = sin(qJ(2));
t121 = cos(qJ(2));
t76 = (t112 * t121 + t114 * t118) * t113;
t133 = t115 * t120 - t117 * t76;
t204 = t133 * qJD(4);
t203 = -0.4e1 * t117;
t116 = sin(qJ(5));
t119 = cos(qJ(5));
t172 = qJD(5) * t119;
t153 = t117 * t172;
t175 = qJD(4) * t120;
t126 = t116 * t175 + t153;
t202 = t126 * pkin(5);
t107 = t113 ^ 2;
t178 = qJD(2) * t118;
t201 = t107 * t178;
t173 = qJD(5) * t116;
t65 = t115 * t117 + t120 * t76;
t177 = qJD(2) * t121;
t150 = t113 * t177;
t151 = t113 * t178;
t74 = -t112 * t151 + t114 * t150;
t46 = t65 * qJD(4) + t74 * t117;
t128 = -t119 * t46 - t133 * t173;
t200 = t128 * t117;
t184 = t113 * t118;
t198 = pkin(1) * t115;
t168 = t118 * t198;
t183 = t113 * t121;
t197 = pkin(8) + qJ(3);
t71 = t197 * t183 + t168;
t199 = -t71 * qJD(2) - qJD(3) * t184;
t196 = -qJ(6) - pkin(10);
t157 = t119 * t175;
t182 = t117 * t119;
t47 = t74 * t120 + t204;
t75 = t112 * t184 - t114 * t183;
t53 = t116 * t75 + t119 * t65;
t73 = qJD(2) * t76;
t20 = qJD(5) * t53 + t47 * t116 - t73 * t119;
t52 = t116 * t65 - t75 * t119;
t195 = -t52 * t157 - t20 * t182;
t146 = t197 * t118;
t67 = (pkin(1) * t121 + pkin(2)) * t115 - t113 * t146;
t49 = t112 * t67 + t114 * t71;
t39 = pkin(9) * t115 + t49;
t161 = -pkin(2) * t121 - pkin(1);
t54 = t75 * pkin(3) - t76 * pkin(9) + t161 * t113;
t194 = t117 * t54 + t120 * t39;
t23 = pkin(10) * t75 + t194;
t48 = -t112 * t71 + t114 * t67;
t38 = -pkin(3) * t115 - t48;
t27 = -pkin(4) * t133 - pkin(10) * t65 + t38;
t12 = t116 * t27 + t119 * t23;
t138 = pkin(4) * t117 - pkin(10) * t120;
t127 = qJD(4) * t138;
t104 = -pkin(2) * t114 - pkin(3);
t139 = -pkin(4) * t120 - pkin(10) * t117;
t91 = t104 + t139;
t193 = -t116 * t127 - t91 * t172;
t103 = pkin(2) * t112 + pkin(9);
t106 = qJD(4) * t117;
t158 = t103 * t106;
t192 = t116 * t158 + t119 * t127;
t181 = t119 * t120;
t93 = t103 * t181;
t63 = t116 * t91 + t93;
t21 = t73 * t116 - t65 * t173 + (qJD(5) * t75 + t47) * t119;
t191 = t21 * t119;
t190 = qJ(6) * t117;
t189 = qJD(4) * t52;
t188 = qJD(5) * t52;
t187 = t103 * t116;
t186 = t103 * t117;
t185 = t103 * t120;
t108 = t116 ^ 2;
t110 = t119 ^ 2;
t180 = t108 - t110;
t109 = t117 ^ 2;
t179 = -t120 ^ 2 + t109;
t176 = qJD(4) * t119;
t174 = qJD(5) * t109;
t171 = qJD(5) * t120;
t170 = t119 * qJD(6);
t169 = -0.2e1 * pkin(4) * qJD(5);
t167 = 0.2e1 * qJD(4) * t104;
t166 = pkin(5) * t173;
t165 = t116 * t204;
t164 = t133 * t176;
t163 = t53 * t175;
t162 = t116 * t185;
t160 = t107 * t177;
t159 = t108 * t175;
t156 = t103 * t175;
t155 = t103 * t174;
t154 = t116 * t171;
t152 = t119 * t171;
t148 = t116 * t172;
t147 = t117 * t175;
t100 = t177 * t198;
t59 = t100 + (-qJD(2) * t146 + qJD(3) * t121) * t113;
t32 = t112 * t59 - t114 * t199;
t11 = -t116 * t23 + t119 * t27;
t145 = -t117 * t39 + t120 * t54;
t144 = qJD(5) * t196;
t143 = t180 * qJD(5);
t142 = t179 * qJD(4);
t141 = t53 * t153;
t140 = t116 * t157;
t6 = -pkin(5) * t133 - qJ(6) * t53 + t11;
t7 = -qJ(6) * t52 + t12;
t137 = -t116 * t7 - t119 * t6;
t136 = t116 * t6 - t119 * t7;
t81 = t119 * t91;
t56 = -qJ(6) * t182 + t81 + (-pkin(5) - t187) * t120;
t58 = -t116 * t190 + t63;
t135 = -t116 * t58 - t119 * t56;
t134 = t116 * t56 - t119 * t58;
t33 = t199 * t112 + t114 * t59;
t99 = pkin(2) * t151;
t51 = pkin(3) * t73 - pkin(9) * t74 + t99;
t14 = -t54 * t106 - t117 * t33 + t120 * t51 - t39 * t175;
t22 = -pkin(4) * t75 - t145;
t132 = t117 * t73 + t75 * t175;
t10 = -pkin(4) * t73 - t14;
t131 = t10 * t116 + t22 * t172;
t130 = -t10 * t119 + t22 * t173;
t129 = t116 * t46 - t133 * t172;
t125 = pkin(4) * t46 - pkin(10) * t47 + t32;
t13 = t39 * t106 - t117 * t51 - t120 * t33 - t54 * t175;
t9 = pkin(10) * t73 - t13;
t3 = -t116 * t125 - t119 * t9 - t27 * t172 + t23 * t173;
t85 = t117 * t173 - t157;
t86 = t117 * t176 + t154;
t4 = -t12 * qJD(5) - t116 * t9 + t119 * t125;
t1 = t46 * pkin(5) - t21 * qJ(6) - t53 * qJD(6) + t4;
t2 = -qJ(6) * t20 - qJD(6) * t52 - t3;
t123 = t137 * qJD(5) - t1 * t116 + t2 * t119;
t82 = t116 * t144 + t170;
t83 = -t116 * qJD(6) + t119 * t144;
t96 = t196 * t116;
t97 = t196 * t119;
t122 = -t83 * t116 + t82 * t119 + (t116 * t97 - t119 * t96) * qJD(5);
t105 = -pkin(5) * t119 - pkin(4);
t101 = t110 * t175;
t95 = t110 * t147;
t88 = t116 * t106 - t152;
t84 = (pkin(5) * t116 + t103) * t117;
t79 = (-pkin(8) * t183 - t168) * qJD(2);
t78 = pkin(8) * t151 - t100;
t66 = t156 + t202;
t62 = t81 - t162;
t55 = -t75 * t106 + t120 * t73;
t42 = t53 * t106;
t41 = -t63 * qJD(5) + t192;
t40 = t86 * t103 + t193;
t29 = (-qJ(6) * qJD(5) - qJD(4) * t103) * t182 + (-qJD(6) * t117 + (-qJ(6) * qJD(4) - qJD(5) * t103) * t120) * t116 - t193;
t28 = -t117 * t170 + (pkin(5) * t117 - qJ(6) * t181) * qJD(4) + (-t93 + (-t91 + t190) * t116) * qJD(5) + t192;
t15 = pkin(5) * t52 + t22;
t5 = pkin(5) * t20 + t10;
t8 = [0, 0, 0, 0.2e1 * t118 * t160, 0.2e1 * (-t118 ^ 2 + t121 ^ 2) * t107 * qJD(2), 0.2e1 * t115 * t150, -0.2e1 * t115 * t151, 0, -0.2e1 * pkin(1) * t201 + 0.2e1 * t115 * t79, -0.2e1 * pkin(1) * t160 + 0.2e1 * t78 * t115, 0.2e1 * t32 * t76 - 0.2e1 * t33 * t75 - 0.2e1 * t48 * t74 - 0.2e1 * t49 * t73, 0.2e1 * t161 * pkin(2) * t201 - 0.2e1 * t48 * t32 + 0.2e1 * t49 * t33, 0.2e1 * t65 * t47, 0.2e1 * t133 * t47 - 0.2e1 * t46 * t65, 0.2e1 * t47 * t75 + 0.2e1 * t65 * t73, 0.2e1 * t133 * t73 - 0.2e1 * t46 * t75, 0.2e1 * t75 * t73, -0.2e1 * t133 * t32 + 0.2e1 * t14 * t75 + 0.2e1 * t145 * t73 + 0.2e1 * t38 * t46, 0.2e1 * t13 * t75 - 0.2e1 * t194 * t73 + 0.2e1 * t32 * t65 + 0.2e1 * t38 * t47, 0.2e1 * t53 * t21, -0.2e1 * t20 * t53 - 0.2e1 * t21 * t52, -0.2e1 * t133 * t21 + 0.2e1 * t46 * t53, 0.2e1 * t133 * t20 - 0.2e1 * t46 * t52, -0.2e1 * t133 * t46, 0.2e1 * t10 * t52 + 0.2e1 * t11 * t46 - 0.2e1 * t133 * t4 + 0.2e1 * t20 * t22, 0.2e1 * t10 * t53 - 0.2e1 * t12 * t46 - 0.2e1 * t133 * t3 + 0.2e1 * t21 * t22, -0.2e1 * t1 * t53 - 0.2e1 * t2 * t52 - 0.2e1 * t20 * t7 - 0.2e1 * t21 * t6, 0.2e1 * t1 * t6 + 0.2e1 * t15 * t5 + 0.2e1 * t2 * t7; 0, 0, 0, 0, 0, t150, -t151, 0, t79, t78 (-t112 * t73 - t114 * t74) * pkin(2) (t112 * t33 - t114 * t32) * pkin(2), t117 * t47 + t65 * t175, -t117 * t46 + t47 * t120 + (-t117 * t65 + t120 * t133) * qJD(4), t132, t55, 0, -t73 * t186 + t104 * t46 - t32 * t120 + (t117 * t38 - t75 * t185) * qJD(4), -t73 * t185 + t104 * t47 + t32 * t117 + (t120 * t38 + t75 * t186) * qJD(4), t53 * t157 + (-t53 * t173 + t191) * t117, -t141 + (-t163 + (-t21 + t188) * t117) * t116 + t195, t42 + (-t21 - t164) * t120 - t200 (t20 + t165) * t120 + (-t129 - t189) * t117, -t106 * t133 - t120 * t46, -t41 * t133 + t62 * t46 + (-t4 + (t103 * t52 + t116 * t22) * qJD(4)) * t120 + (qJD(4) * t11 + t103 * t20 + t131) * t117, -t40 * t133 - t63 * t46 + (-t3 + (t103 * t53 + t119 * t22) * qJD(4)) * t120 + (-qJD(4) * t12 + t103 * t21 - t130) * t117, -t20 * t58 - t21 * t56 - t28 * t53 - t29 * t52 + t137 * t175 + (t136 * qJD(5) - t1 * t119 - t116 * t2) * t117, t1 * t56 + t15 * t66 + t2 * t58 + t28 * t6 + t29 * t7 + t5 * t84; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t147, -0.2e1 * t142, 0, 0, 0, t117 * t167, t120 * t167, -0.2e1 * t109 * t148 + 0.2e1 * t95, t140 * t203 + 0.2e1 * t180 * t174, 0.2e1 * t117 * t154 + 0.2e1 * t179 * t176, -0.2e1 * t116 * t142 + 0.2e1 * t117 * t152, -0.2e1 * t147, 0.2e1 * t119 * t155 - 0.2e1 * t41 * t120 + 0.2e1 * (t62 + 0.2e1 * t162) * t106, -0.2e1 * t116 * t155 - 0.2e1 * t40 * t120 + 0.2e1 * (-t63 + 0.2e1 * t93) * t106, 0.2e1 * t135 * t175 + 0.2e1 * (t134 * qJD(5) - t116 * t29 - t119 * t28) * t117, 0.2e1 * t28 * t56 + 0.2e1 * t29 * t58 + 0.2e1 * t66 * t84; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t99, 0, 0, 0, 0, 0, t55, -t132, 0, 0, 0, 0, 0 (-t20 + t165) * t120 + (-t129 + t189) * t117, t42 + (-t21 + t164) * t120 + t200, t141 + (t163 + (t21 + t188) * t117) * t116 + t195 (-qJD(4) * t136 - t5) * t120 + (qJD(4) * t15 + t123) * t117; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 (-qJD(4) * t134 - t66) * t120 + (qJD(4) * t84 + t135 * qJD(5) - t28 * t116 + t29 * t119) * t117; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t95 + 0.2e1 * (t108 - 0.1e1) * t147; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t47, -t46, t73, t14, t13, t116 * t21 + t53 * t172, -t116 * t20 + t191 + (-t116 * t53 - t119 * t52) * qJD(5), t129, -t128, 0, -pkin(4) * t20 - t129 * pkin(10) + t130, -pkin(4) * t21 + pkin(10) * t128 + t131, t97 * t20 - t96 * t21 - t82 * t52 - t83 * t53 + t123, t1 * t96 + t105 * t5 + t15 * t166 - t2 * t97 + t6 * t83 + t7 * t82; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t175, -t106, 0, -t156, t158, -t117 * t143 + t140, t148 * t203 + t101 - t159, t88, t86, 0 (pkin(10) * t181 + (-pkin(4) * t119 + t187) * t117) * qJD(5) + (t139 * t116 - t93) * qJD(4) (t103 * t182 + t138 * t116) * qJD(5) + (t139 * t119 + t162) * qJD(4) (-t96 * t175 - t117 * t83 + t29 + (t117 * t97 - t56) * qJD(5)) * t119 + (t97 * t175 - t117 * t82 - t28 + (t117 * t96 - t58) * qJD(5)) * t116, t105 * t66 + t84 * t166 + t28 * t96 - t29 * t97 + t56 * t83 + t58 * t82; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t106, -t175, 0, 0, 0, 0, 0, -t86, t88, t101 + t159 (-t166 + (-t116 * t96 - t119 * t97) * qJD(4)) * t120 + (qJD(4) * t105 + t122) * t117; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t148, -0.2e1 * t143, 0, 0, 0, t116 * t169, t119 * t169, 0.2e1 * t122, 0.2e1 * t105 * t166 - 0.2e1 * t82 * t97 + 0.2e1 * t83 * t96; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t21, -t20, t46, t4, t3, -pkin(5) * t21, t1 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t85, -t126, t106, t41, t40, t85 * pkin(5), t28 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t126, t85, 0, -t202; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t172, -t173, 0, -pkin(10) * t172, pkin(10) * t173, -pkin(5) * t172, t83 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t66; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t106; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t166; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t8;
