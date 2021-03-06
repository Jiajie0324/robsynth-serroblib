% Calculate minimal parameter regressor of joint inertia matrix time derivative for
% S6RRRPRR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,d6,theta4]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x35]
%   minimal parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 18:19
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRRPRR4_inertiaDJ_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR4_inertiaDJ_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRR4_inertiaDJ_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPRR4_inertiaDJ_regmin_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 18:17:46
% EndTime: 2019-03-09 18:17:55
% DurationCPUTime: 2.77s
% Computational Cost: add. (5228->259), mult. (12065->435), div. (0->0), fcn. (12104->10), ass. (0->175)
t160 = sin(pkin(11));
t161 = cos(pkin(11));
t206 = t160 ^ 2 + t161 ^ 2;
t243 = t206 * qJD(4);
t244 = 0.2e1 * t243;
t168 = cos(qJ(3));
t204 = qJD(3) * t168;
t197 = pkin(2) * t204;
t146 = qJD(4) + t197;
t242 = t206 * t146;
t164 = sin(qJ(3));
t149 = pkin(2) * t164 + qJ(4);
t124 = (-pkin(9) - t149) * t160;
t157 = t161 * pkin(9);
t125 = t149 * t161 + t157;
t163 = sin(qJ(5));
t167 = cos(qJ(5));
t211 = t163 * t124 + t167 * t125;
t142 = (-pkin(9) - qJ(4)) * t160;
t143 = qJ(4) * t161 + t157;
t209 = t163 * t142 + t167 * t143;
t216 = t160 * t167;
t134 = t161 * t163 + t216;
t120 = t134 * qJD(5);
t241 = qJD(2) + qJD(3);
t202 = qJD(5) * t167;
t215 = t167 * t161;
t82 = (qJD(4) * t160 + qJD(5) * t143) * t163 - qJD(4) * t215 - t142 * t202;
t65 = (qJD(5) * t125 + t146 * t160) * t163 - t124 * t202 - t146 * t215;
t240 = -pkin(8) - pkin(7);
t165 = sin(qJ(2));
t169 = cos(qJ(2));
t136 = t164 * t169 + t168 * t165;
t99 = t241 * t136;
t239 = t99 * pkin(5);
t238 = pkin(2) * t168;
t237 = pkin(5) * t120;
t135 = t164 * t165 - t168 * t169;
t236 = pkin(5) * t135;
t235 = pkin(10) * t134;
t133 = t160 * t163 - t215;
t119 = t133 * qJD(5);
t234 = t119 * pkin(10);
t166 = cos(qJ(6));
t203 = qJD(5) * t163;
t219 = t136 * t160;
t98 = t241 * t135;
t38 = -t98 * t216 - t203 * t219 + (t136 * t202 - t163 * t98) * t161;
t223 = t161 * t98;
t201 = t165 * qJD(2);
t198 = pkin(2) * t201;
t57 = pkin(3) * t99 + qJ(4) * t98 - qJD(4) * t136 + t198;
t193 = qJD(2) * t240;
t138 = t165 * t193;
t144 = t240 * t165;
t145 = t240 * t169;
t182 = t169 * t193;
t205 = qJD(3) * t164;
t76 = -t168 * t138 - t144 * t204 - t145 * t205 - t164 * t182;
t34 = t160 * t76 + t161 * t57;
t25 = pkin(4) * t99 + pkin(9) * t223 + t34;
t224 = t160 * t98;
t35 = t160 * t57 - t161 * t76;
t28 = pkin(9) * t224 + t35;
t104 = t144 * t164 - t145 * t168;
t153 = -pkin(2) * t169 - pkin(1);
t94 = t135 * pkin(3) - t136 * qJ(4) + t153;
t67 = -t104 * t160 + t161 * t94;
t47 = pkin(4) * t135 - t136 * t157 + t67;
t68 = t161 * t104 + t160 * t94;
t56 = -pkin(9) * t219 + t68;
t7 = -t163 * t25 - t167 * t28 - t47 * t202 + t56 * t203;
t6 = -pkin(10) * t38 - t7;
t233 = t166 * t6;
t77 = t104 * qJD(3) + t164 * t138 - t168 * t182;
t50 = -pkin(4) * t224 + t77;
t26 = t38 * pkin(5) + t50;
t103 = -t144 * t168 - t164 * t145;
t85 = pkin(4) * t219 + t103;
t89 = t134 * t136;
t60 = pkin(5) * t89 + t85;
t162 = sin(qJ(6));
t96 = -t133 * t162 + t134 * t166;
t62 = t96 * qJD(6) - t162 * t119 + t166 * t120;
t95 = t166 * t133 + t134 * t162;
t232 = t26 * t95 + t60 * t62;
t61 = -t95 * qJD(6) - t166 * t119 - t162 * t120;
t231 = t26 * t96 + t60 * t61;
t230 = t85 * t120 + t50 * t133;
t229 = -t85 * t119 + t50 * t134;
t228 = t163 * t47 + t167 * t56;
t150 = -pkin(4) * t161 - pkin(3);
t107 = pkin(5) * t133 + t150;
t105 = t107 - t238;
t154 = pkin(2) * t205;
t106 = t154 + t237;
t227 = t105 * t62 + t106 * t95;
t226 = t105 * t61 + t106 * t96;
t225 = pkin(5) * qJD(6);
t19 = -pkin(10) * t89 + t228;
t222 = t162 * t19;
t221 = t166 * t19;
t220 = t77 * t161;
t218 = t150 * t119;
t217 = t150 * t120;
t141 = t150 - t238;
t213 = t141 * t120 + t133 * t154;
t212 = -t141 * t119 + t134 * t154;
t200 = t169 * qJD(2);
t199 = -0.2e1 * pkin(1) * qJD(2);
t196 = t162 * t225;
t195 = t166 * t225;
t37 = -t120 * t136 + t133 * t98;
t8 = -t228 * qJD(5) - t163 * t28 + t167 * t25;
t5 = -t37 * pkin(10) + t239 + t8;
t194 = -t162 * t6 + t166 * t5;
t191 = -t163 * t56 + t167 * t47;
t90 = t133 * t136;
t16 = pkin(10) * t90 + t191 + t236;
t192 = -t16 - t236;
t189 = t167 * t124 - t125 * t163;
t188 = t167 * t142 - t143 * t163;
t186 = t160 * t154;
t185 = t161 * t154;
t184 = t107 * t61 + t96 * t237;
t183 = t107 * t62 + t95 * t237;
t181 = -t103 * t98 + t136 * t77;
t180 = t16 * t166 - t222;
t179 = t16 * t162 + t221;
t13 = -t160 * t34 + t161 * t35;
t178 = -t160 * t67 + t161 * t68;
t80 = t189 - t235;
t127 = t133 * pkin(10);
t81 = -t127 + t211;
t177 = t162 * t81 - t166 * t80;
t176 = t162 * t80 + t166 * t81;
t86 = t188 - t235;
t87 = -t127 + t209;
t175 = t162 * t87 - t166 * t86;
t174 = t162 * t86 + t166 * t87;
t58 = -t162 * t90 + t166 * t89;
t59 = -t162 * t89 - t166 * t90;
t171 = pkin(3) * t98 - qJ(4) * t99 - qJD(4) * t135;
t152 = -pkin(3) - t238;
t170 = -t135 * t146 + t136 * t154 - t149 * t99 - t152 * t98;
t66 = -qJD(5) * t211 - t134 * t146;
t83 = -t134 * qJD(4) - qJD(5) * t209;
t116 = t120 * pkin(10);
t97 = -0.2e1 * t134 * t119;
t84 = 0.2e1 * t135 * t99;
t73 = t77 * t160;
t71 = 0.2e1 * t119 * t133 - 0.2e1 * t120 * t134;
t70 = t83 + t234;
t69 = -t116 - t82;
t64 = -t120 * t135 - t133 * t99;
t63 = -t119 * t135 + t134 * t99;
t55 = t66 + t234;
t54 = -t116 - t65;
t39 = 0.2e1 * t96 * t61;
t33 = -t135 * t62 - t95 * t99;
t32 = t135 * t61 + t96 * t99;
t29 = t119 * t90 + t134 * t37;
t22 = -0.2e1 * t61 * t95 - 0.2e1 * t62 * t96;
t21 = -t174 * qJD(6) - t162 * t69 + t166 * t70;
t20 = t175 * qJD(6) - t162 * t70 - t166 * t69;
t15 = -t176 * qJD(6) - t162 * t54 + t166 * t55;
t14 = t177 * qJD(6) - t162 * t55 - t166 * t54;
t12 = t59 * qJD(6) + t162 * t37 + t166 * t38;
t11 = -t58 * qJD(6) - t162 * t38 + t166 * t37;
t10 = t119 * t89 + t120 * t90 - t133 * t37 - t134 * t38;
t9 = t11 * t96 + t59 * t61;
t3 = -t11 * t95 - t12 * t96 - t58 * t61 - t59 * t62;
t2 = -t179 * qJD(6) + t194;
t1 = -t180 * qJD(6) - t162 * t5 - t233;
t4 = [0, 0, 0, 0.2e1 * t165 * t200, 0.2e1 * (-t165 ^ 2 + t169 ^ 2) * qJD(2), 0, 0, 0, t165 * t199, t169 * t199, -0.2e1 * t136 * t98, 0.2e1 * t135 * t98 - 0.2e1 * t136 * t99, 0, 0, 0, 0.2e1 * t135 * t198 + 0.2e1 * t153 * t99, 0.2e1 * t136 * t198 - 0.2e1 * t153 * t98, 0.2e1 * t34 * t135 + 0.2e1 * t181 * t160 + 0.2e1 * t67 * t99, -0.2e1 * t35 * t135 + 0.2e1 * t181 * t161 - 0.2e1 * t68 * t99, -0.2e1 * (-t160 * t68 - t161 * t67) * t98 + 0.2e1 * (-t160 * t35 - t161 * t34) * t136, 0.2e1 * t103 * t77 + 0.2e1 * t34 * t67 + 0.2e1 * t35 * t68, -0.2e1 * t90 * t37, -0.2e1 * t37 * t89 + 0.2e1 * t38 * t90, 0.2e1 * t135 * t37 - 0.2e1 * t90 * t99, -0.2e1 * t135 * t38 - 0.2e1 * t89 * t99, t84, 0.2e1 * t8 * t135 + 0.2e1 * t191 * t99 + 0.2e1 * t85 * t38 + 0.2e1 * t50 * t89, 0.2e1 * t7 * t135 - 0.2e1 * t228 * t99 + 0.2e1 * t85 * t37 - 0.2e1 * t50 * t90, 0.2e1 * t59 * t11, -0.2e1 * t11 * t58 - 0.2e1 * t12 * t59, 0.2e1 * t11 * t135 + 0.2e1 * t59 * t99, -0.2e1 * t12 * t135 - 0.2e1 * t58 * t99, t84, 0.2e1 * t60 * t12 + 0.2e1 * t2 * t135 + 0.2e1 * t180 * t99 + 0.2e1 * t26 * t58, 0.2e1 * t1 * t135 + 0.2e1 * t60 * t11 - 0.2e1 * t179 * t99 + 0.2e1 * t26 * t59; 0, 0, 0, 0, 0, t200, -t201, 0, -pkin(7) * t200, pkin(7) * t201, 0, 0, -t98, -t99, 0, -t77, t76, t170 * t160 - t220, t170 * t161 + t73, t13, t103 * t154 + t13 * t149 + t178 * t146 + t77 * t152, t29, t10, t63, t64, 0, t66 * t135 + t141 * t38 + t89 * t154 + t189 * t99 + t230, t65 * t135 + t141 * t37 - t90 * t154 - t211 * t99 + t229, t9, t3, t32, t33, 0, t105 * t12 + t106 * t58 + t15 * t135 - t177 * t99 + t232, t105 * t11 + t106 * t59 + t14 * t135 - t176 * t99 + t231; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t154, -0.2e1 * t197, -0.2e1 * t185, 0.2e1 * t186, 0.2e1 * t242, 0.2e1 * t149 * t242 + 0.2e1 * t152 * t154, t97, t71, 0, 0, 0, 0.2e1 * t213, 0.2e1 * t212, t39, t22, 0, 0, 0, 0.2e1 * t227, 0.2e1 * t226; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t98, -t99, 0, -t77, t76, t171 * t160 - t220, t171 * t161 + t73, t13, -t77 * pkin(3) + t13 * qJ(4) + t178 * qJD(4), t29, t10, t63, t64, 0, t83 * t135 + t150 * t38 + t188 * t99 + t230, t82 * t135 + t150 * t37 - t209 * t99 + t229, t9, t3, t32, t33, 0, t107 * t12 + t21 * t135 - t175 * t99 + t237 * t58 + t232, t107 * t11 + t20 * t135 - t174 * t99 + t237 * t59 + t231; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t154, -t197, -t185, t186, t243 + t242, -pkin(3) * t154 + qJ(4) * t242 + t149 * t243, t97, t71, 0, 0, 0, t213 + t217, t212 - t218, t39, t22, 0, 0, 0, t183 + t227, t184 + t226; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t244, qJ(4) * t244, t97, t71, 0, 0, 0, 0.2e1 * t217, -0.2e1 * t218, t39, t22, 0, 0, 0, 0.2e1 * t183, 0.2e1 * t184; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t224, -t223, 0, t77, 0, 0, 0, 0, 0, t38, t37, 0, 0, 0, 0, 0, t12, t11; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t154, 0, 0, 0, 0, 0, t120, -t119, 0, 0, 0, 0, 0, t62, t61; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t120, -t119, 0, 0, 0, 0, 0, t62, t61; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t37, -t38, t99, t8, t7, 0, 0, t11, -t12, t99, t166 * t239 + (t162 * t192 - t221) * qJD(6) + t194, -t233 + (-t5 - t239) * t162 + (t166 * t192 + t222) * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t119, -t120, 0, t66, t65, 0, 0, t61, -t62, 0, t15, t14; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t119, -t120, 0, t83, t82, 0, 0, t61, -t62, 0, t21, t20; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t196, -0.2e1 * t195; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t11, -t12, t99, t2, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t61, -t62, 0, t15, t14; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t61, -t62, 0, t21, t20; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t196, -t195; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t4;
