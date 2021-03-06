% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RRRRPP3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 20:57
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRRRPP3_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP3_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP3_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRRRPP3_inertiaDJ_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 20:56:29
% EndTime: 2019-03-09 20:56:43
% DurationCPUTime: 4.83s
% Computational Cost: add. (4700->370), mult. (10635->572), div. (0->0), fcn. (9413->6), ass. (0->187)
t144 = sin(qJ(4));
t142 = t144 ^ 2;
t147 = cos(qJ(4));
t238 = t147 ^ 2;
t247 = t142 + t238;
t233 = cos(qJ(3));
t179 = qJD(3) * t233;
t175 = pkin(2) * t179;
t246 = t247 * t175;
t146 = sin(qJ(2));
t145 = sin(qJ(3));
t148 = cos(qJ(2));
t211 = t145 * t148;
t108 = t233 * t146 + t211;
t139 = qJD(4) * t147;
t185 = t233 * t148;
t174 = qJD(2) * t185;
t212 = t145 * t146;
t240 = qJD(2) + qJD(3);
t60 = -t148 * t179 + t240 * t212 - t174;
t223 = t144 * t60;
t44 = t108 * t139 - t223;
t61 = t240 * t108;
t56 = t61 * qJ(5);
t107 = -t185 + t212;
t96 = t107 * qJD(5);
t245 = t56 + t96;
t143 = -pkin(4) - qJ(6);
t244 = t143 * t61;
t138 = qJD(4) * t144;
t220 = qJ(5) * t147;
t164 = -qJ(6) * t144 + t220;
t215 = t108 * t144;
t236 = -pkin(8) - pkin(7);
t118 = t236 * t146;
t120 = t236 * t148;
t68 = -t233 * t118 - t120 * t145;
t173 = pkin(4) * t215 + t68;
t27 = -t164 * t108 + t173;
t184 = t108 * t138;
t188 = qJD(2) * t236;
t110 = t146 * t188;
t69 = t145 * t118 - t233 * t120;
t40 = t69 * qJD(3) + t145 * t110 - t236 * t174;
t151 = t44 * pkin(4) + qJ(5) * t184 + t40;
t202 = qJD(6) * t144;
t7 = t164 * t60 + (t202 + (qJ(6) * qJD(4) - qJD(5)) * t147) * t108 + t151;
t180 = t27 * t138 - t147 * t7;
t137 = qJD(5) * t147;
t213 = t144 * qJ(5);
t172 = t147 * pkin(4) + t213;
t243 = -t172 * qJD(4) + t137;
t242 = t142 - t238;
t241 = t242 * qJD(4);
t201 = t146 * qJD(2);
t193 = pkin(2) * t201;
t157 = pkin(3) * t61 + pkin(9) * t60 + t193;
t206 = qJD(3) * t145;
t39 = -t233 * t110 - t118 * t179 - t120 * t206 - t188 * t211;
t133 = -pkin(2) * t148 - pkin(1);
t51 = pkin(3) * t107 - pkin(9) * t108 + t133;
t178 = t51 * t138 + t69 * t139 - t144 * t39 - t147 * t157;
t221 = t147 * t60;
t42 = t184 + t221;
t239 = -t42 * pkin(5) + t178;
t163 = -t143 * t147 + t213;
t214 = t108 * t147;
t14 = 0.2e1 * t42 * t107 - 0.2e1 * t61 * t214;
t237 = -0.2e1 * t241;
t235 = pkin(4) * t61;
t234 = pkin(9) * t61;
t232 = pkin(9) * t107;
t230 = t40 * t68;
t131 = pkin(2) * t145 + pkin(9);
t229 = pkin(5) + t131;
t228 = t68 * t139 + t40 * t144;
t136 = pkin(2) * t206;
t204 = qJD(5) * t144;
t176 = pkin(4) * t138 - t204;
t66 = qJ(6) * t138 + (-qJ(5) * qJD(4) - qJD(6)) * t147 + t176;
t55 = t136 + t66;
t227 = -t55 - t66;
t34 = t144 * t51 + t147 * t69;
t226 = pkin(2) * qJD(3);
t13 = (qJ(5) * t60 - qJD(5) * t108) * t147 + t151;
t12 = t13 * t147;
t225 = t131 * t61;
t224 = t142 * t60;
t222 = t145 * t68;
t24 = -qJ(5) * t107 - t34;
t20 = -pkin(5) * t215 - t24;
t219 = qJD(4) * t20;
t218 = qJD(4) * t27;
t38 = -qJ(5) * t214 + t173;
t217 = qJD(4) * t38;
t216 = t107 * t131;
t210 = t246 * t131;
t209 = t246 * pkin(9);
t194 = t233 * pkin(2);
t132 = -t194 - pkin(3);
t208 = t132 * t139 + t144 * t136;
t207 = qJ(5) * qJD(5);
t205 = qJD(4) * t108;
t203 = qJD(6) * t107;
t200 = t148 * qJD(2);
t62 = t144 * t69;
t19 = t62 + (pkin(5) * t108 - t51) * t147 + t143 * t107;
t4 = -t203 + t239 + t244;
t10 = t69 * t138 - t51 * t139 - t144 * t157 + t147 * t39;
t152 = -t44 * pkin(5) - t10;
t6 = t152 + t245;
t199 = t19 * t139 + t4 * t144 + t6 * t147;
t198 = -0.2e1 * pkin(1) * qJD(2);
t45 = 0.2e1 * t107 * t61;
t123 = t147 * t175;
t70 = -t229 * t138 + t123;
t167 = t144 * t175;
t71 = t229 * t139 + t167;
t140 = t144 * pkin(5);
t98 = t131 * t144 + t140;
t197 = t98 * t139 + t71 * t144 + t70 * t147;
t111 = (-pkin(5) - pkin(9)) * t138;
t135 = pkin(9) * t139;
t112 = pkin(5) * t139 + t135;
t117 = pkin(9) * t144 + t140;
t195 = t111 * t147 + t112 * t144 + t117 * t139;
t192 = pkin(3) * t138;
t191 = pkin(3) * t139;
t190 = pkin(9) * t138;
t189 = t144 * t221;
t57 = t68 * t138;
t187 = t144 * t233;
t186 = t147 * t233;
t182 = t144 * t139;
t181 = t146 * t200;
t33 = t147 * t51 - t62;
t115 = -pkin(3) - t172;
t97 = -t194 + t115;
t177 = qJD(4) * (-t115 - t97);
t171 = -t108 * t115 + t232;
t26 = -pkin(4) * t107 - t33;
t170 = t144 * t24 + t147 * t26;
t169 = t144 * t34 + t147 * t33;
t165 = -t108 * t97 + t216;
t162 = -t108 * t132 + t216;
t161 = t132 * t138 - t147 * t136;
t95 = -pkin(3) - t163;
t81 = -t194 + t95;
t160 = t81 * t139 + t55 * t144;
t159 = t95 * t139 + t66 * t144;
t41 = t107 * t138 - t147 * t61;
t87 = -qJ(5) * t139 + t176;
t8 = t10 - t245;
t156 = (-t233 * t107 + t108 * t145) * qJD(3);
t155 = -t108 * t87 + t115 * t60 - t217 + t234;
t9 = t178 - t235;
t1 = t170 * qJD(4) + t9 * t144 - t8 * t147;
t2 = -t169 * qJD(4) - t10 * t147 + t144 * t178;
t153 = pkin(2) * t156 - t132 * t60 - t225;
t74 = t136 + t87;
t150 = t107 * t175 - t108 * t74 + t60 * t97 - t217 + t225;
t149 = 0.2e1 * qJD(5);
t141 = t147 * pkin(5);
t126 = -0.2e1 * t182;
t125 = 0.2e1 * t182;
t119 = pkin(9) * t147 + t141;
t104 = t108 ^ 2;
t99 = t131 * t147 + t141;
t86 = t247 * t233 * t226;
t80 = t131 * t139 + t167;
t79 = t131 * t138 - t123;
t78 = t95 * t138;
t77 = 0.2e1 * t86;
t76 = t87 * t147;
t73 = -t163 * qJD(4) + t137 - t202;
t72 = t81 * t138;
t67 = t74 * t147;
t43 = t107 * t139 + t144 * t61;
t32 = 0.2e1 * (-t104 * t138 - t60 * t214) * t147;
t31 = 0.2e1 * t104 * t182 - 0.2e1 * t108 * t224;
t30 = t242 * t205 + t189;
t23 = t104 * t241 + 0.2e1 * t108 * t189;
t22 = 0.2e1 * t23;
t21 = 0.4e1 * t108 * t182 + t238 * t60 - t224;
t17 = t44 * t107 + t61 * t215;
t15 = 0.2e1 * t17;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t181, 0.2e1 * (-t146 ^ 2 + t148 ^ 2) * qJD(2), 0, -0.2e1 * t181, 0, 0, t146 * t198, t148 * t198, 0, 0, -0.2e1 * t108 * t60, 0.2e1 * t107 * t60 - 0.2e1 * t108 * t61, 0, t45, 0, 0, 0.2e1 * t107 * t193 + 0.2e1 * t133 * t61, 0.2e1 * t108 * t193 - 0.2e1 * t133 * t60, 0.2e1 * t107 * t39 + 0.2e1 * t108 * t40 - 0.2e1 * t60 * t68 - 0.2e1 * t61 * t69, 0.2e1 * t133 * t193 - 0.2e1 * t39 * t69 + 0.2e1 * t230, t32, t22, -t14, t31, -0.2e1 * t17, t45, -0.2e1 * t107 * t178 + 0.2e1 * t228 * t108 - 0.2e1 * t68 * t223 + 0.2e1 * t33 * t61, -0.2e1 * t68 * t221 + 0.2e1 * t10 * t107 - 0.2e1 * t34 * t61 + 0.2e1 * (t40 * t147 - t57) * t108, 0.2e1 * t169 * t60 + 0.2e1 * (t10 * t144 + t178 * t147 + (t144 * t33 - t147 * t34) * qJD(4)) * t108, -0.2e1 * t10 * t34 - 0.2e1 * t178 * t33 + 0.2e1 * t230, t45, t14, t15, t32, t22, t31, -0.2e1 * t170 * t60 + 0.2e1 * (t144 * t8 + t147 * t9 + (-t144 * t26 + t147 * t24) * qJD(4)) * t108, 0.2e1 * t38 * t223 + 0.2e1 * t107 * t9 + 0.2e1 * t26 * t61 + 0.2e1 * (-t13 * t144 - t38 * t139) * t108, 0.2e1 * t38 * t221 - 0.2e1 * t107 * t8 - 0.2e1 * t24 * t61 + 0.2e1 * (t38 * t138 - t12) * t108, 0.2e1 * t13 * t38 + 0.2e1 * t24 * t8 + 0.2e1 * t26 * t9, t45, t15, -t14, t31, -0.2e1 * t23, t32, 0.2e1 * (t144 * t20 - t147 * t19) * t60 + 0.2e1 * (-t144 * t6 + t147 * t4 + (-t144 * t19 - t147 * t20) * qJD(4)) * t108, 0.2e1 * t107 * t6 + 0.2e1 * t180 * t108 + 0.2e1 * t20 * t61 + 0.2e1 * t27 * t221, -0.2e1 * t27 * t223 - 0.2e1 * t107 * t4 - 0.2e1 * t19 * t61 + 0.2e1 * (t27 * t139 + t144 * t7) * t108, 0.2e1 * t19 * t4 + 0.2e1 * t20 * t6 + 0.2e1 * t27 * t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t200, 0, -t201, 0, -pkin(7) * t200, pkin(7) * t201, 0, 0, 0, 0, -t60, 0, -t61, 0, -t40, t39 (-t145 * t61 + t233 * t60 + t156) * pkin(2) (-t233 * t40 - t145 * t39 + (t233 * t69 + t222) * qJD(3)) * pkin(2), -t30, -t21, t43, t30, -t41, 0, t57 + (-t162 * qJD(4) - t40) * t147 + t153 * t144, t162 * t138 + t153 * t147 + t228, t2, t40 * t132 + (t34 * t186 - t33 * t187 + t222) * t226 + t2 * t131, 0, -t43, t41, -t30, -t21, t30, t1, t165 * t139 + t144 * t150 + t12 (-qJD(4) * t165 - t13) * t144 + t150 * t147, t13 * t97 + t38 * t74 + (-t24 * t186 + t26 * t187) * t226 + t1 * t131, 0, t41, t43, t30, t21, -t30, -t98 * t221 + (t60 * t99 - t219) * t144 + (-t144 * t70 + t147 * t71 + (-t144 * t98 - t147 * t99) * qJD(4)) * t108 + t199, t107 * t70 + t61 * t99 + (t81 * t205 - t7) * t144 + (-t108 * t55 + t60 * t81 - t218) * t147, -t107 * t71 + t108 * t160 - t81 * t223 - t61 * t98 + t180, t19 * t71 + t20 * t70 + t27 * t55 + t4 * t98 + t6 * t99 + t7 * t81; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t136, -0.2e1 * t175, 0, 0, t125, t237, 0, t126, 0, 0, 0.2e1 * t161, 0.2e1 * t208, t77, 0.2e1 * t132 * t136 + 0.2e1 * t210, 0, 0, 0, t125, t237, t126, t77, -0.2e1 * t97 * t138 + 0.2e1 * t67, -0.2e1 * t97 * t139 - 0.2e1 * t74 * t144, 0.2e1 * t74 * t97 + 0.2e1 * t210, 0, 0, 0, t126, -t237, t125, -0.2e1 * t99 * t138 + 0.2e1 * t197, -0.2e1 * t160, -0.2e1 * t147 * t55 + 0.2e1 * t72, 0.2e1 * t55 * t81 + 0.2e1 * t70 * t99 + 0.2e1 * t71 * t98; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t60, 0, -t61, 0, -t40, t39, 0, 0, -t30, -t21, t43, t30, -t41, 0, t57 + (pkin(3) * t60 - t234) * t144 + (-t40 + (-pkin(3) * t108 - t232) * qJD(4)) * t147, t42 * pkin(3) + t41 * pkin(9) + t228, t2, -pkin(3) * t40 + pkin(9) * t2, 0, -t43, t41, -t30, -t21, t30, t1, t171 * t139 + t144 * t155 + t12 (-t171 * qJD(4) - t13) * t144 + t155 * t147, pkin(9) * t1 + t115 * t13 + t38 * t87, 0, t41, t43, t30, t21, -t30, -t117 * t221 + (t119 * t60 - t219) * t144 + (-t111 * t144 + t112 * t147 + (-t117 * t144 - t119 * t147) * qJD(4)) * t108 + t199, t107 * t111 + t119 * t61 + (t95 * t205 - t7) * t144 + (-t108 * t66 + t60 * t95 - t218) * t147, -t107 * t112 + t108 * t159 - t117 * t61 - t95 * t223 + t180, t111 * t20 + t112 * t19 + t117 * t4 + t119 * t6 + t27 * t66 + t7 * t95; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t136, -t175, 0, 0, t125, t237, 0, t126, 0, 0, t161 - t192, -t191 + t208, t86, -pkin(3) * t136 + t209, 0, 0, 0, t125, t237, t126, t86, t144 * t177 + t67 + t76 (-t74 - t87) * t144 + t147 * t177, t115 * t74 + t87 * t97 + t209, 0, 0, 0, t126, -t237, t125 (-t119 - t99) * t138 + t195 + t197, t227 * t144 + (-t81 - t95) * t139, t227 * t147 + t72 + t78, t111 * t99 + t112 * t98 + t117 * t71 + t119 * t70 + t55 * t95 + t66 * t81; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t125, t237, 0, t126, 0, 0, -0.2e1 * t192, -0.2e1 * t191, 0, 0, 0, 0, 0, t125, t237, t126, 0, -0.2e1 * t115 * t138 + 0.2e1 * t76, -0.2e1 * t115 * t139 - 0.2e1 * t87 * t144, 0.2e1 * t115 * t87, 0, 0, 0, t126, -t237, t125, -0.2e1 * t119 * t138 + 0.2e1 * t195, -0.2e1 * t159, -0.2e1 * t147 * t66 + 0.2e1 * t78, 0.2e1 * t111 * t119 + 0.2e1 * t112 * t117 + 0.2e1 * t66 * t95; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t42, 0, -t44, t61, -t178, t10, 0, 0, t61, t42, t44, 0, 0, 0, t172 * t60 + (-t204 + (pkin(4) * t144 - t220) * qJD(4)) * t108, t178 - 0.2e1 * t235, -t8 + t245, -pkin(4) * t9 - qJ(5) * t8 - qJD(5) * t24, t61, t44, -t42, 0, 0, 0, t163 * t60 + (-t204 - qJD(6) * t147 + (-t143 * t144 - t220) * qJD(4)) * t108, 0.2e1 * t56 + 0.2e1 * t96 + t152, 0.2e1 * t203 - t239 - 0.2e1 * t244, qJ(5) * t6 + qJD(5) * t20 - qJD(6) * t19 + t143 * t4; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t139, 0, -t138, 0, -t80, t79, 0, 0, 0, -t139, t138, 0, 0, 0, t243, t80, -t79 (-pkin(4) * t187 + qJ(5) * t186) * t226 + t243 * t131, 0, t138, t139, 0, 0, 0, t73, t70, -t71, qJ(5) * t70 + qJD(5) * t99 - qJD(6) * t98 + t143 * t71; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t139, 0, -t138, 0, -t135, t190, 0, 0, 0, -t139, t138, 0, 0, 0, t243, t135, -t190, t243 * pkin(9), 0, t138, t139, 0, 0, 0, t73, t111, -t112, qJ(5) * t111 + qJD(5) * t119 - qJD(6) * t117 + t112 * t143; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t149, 0.2e1 * t207, 0, 0, 0, 0, 0, 0, 0, t149, 0.2e1 * qJD(6), -0.2e1 * qJD(6) * t143 + 0.2e1 * t207; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t42, t61, 0, t9, 0, 0, 0, 0, 0, 0, -t42, 0, -t61, t4; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t139, 0, 0, t80, 0, 0, 0, 0, 0, 0, t139, 0, 0, t71; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t139, 0, 0, t135, 0, 0, 0, 0, 0, 0, t139, 0, 0, t112; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t44, t61, 0, t6; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t138, 0, 0, t70; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t138, 0, 0, t111; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t3;
