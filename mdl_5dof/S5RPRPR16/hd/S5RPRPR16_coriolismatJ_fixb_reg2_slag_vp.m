% Calculate inertial parameters regressor of coriolis matrix for
% S5RPRPR16
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d5]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 18:39
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RPRPR16_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPR16_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRPR16_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RPRPR16_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:39:38
% EndTime: 2019-12-31 18:39:42
% DurationCPUTime: 2.19s
% Computational Cost: add. (1544->211), mult. (2677->276), div. (0->0), fcn. (2203->4), ass. (0->160)
t136 = sin(qJ(3));
t177 = t136 * qJD(4);
t138 = cos(qJ(3));
t121 = t138 * qJ(4);
t88 = -t136 * pkin(3) + t121;
t152 = qJD(3) * t88 + t177;
t140 = -pkin(1) - pkin(6);
t224 = -pkin(4) + t140;
t135 = sin(qJ(5));
t137 = cos(qJ(5));
t195 = t136 * t137;
t164 = 0.2e1 * t135 * t195;
t131 = t135 ^ 2;
t133 = t137 ^ 2;
t94 = t131 - t133;
t142 = qJD(1) * t164 - qJD(3) * t94;
t139 = -pkin(3) - pkin(7);
t222 = (t136 * t139 + t121) * qJD(3) + t177;
t221 = -t131 / 0.2e1;
t220 = t133 / 0.2e1;
t219 = -t135 / 0.2e1;
t217 = t137 / 0.2e1;
t83 = t224 * t136;
t207 = t83 * t135;
t120 = t136 * qJ(4);
t87 = t138 * pkin(3) + t120;
t74 = pkin(7) * t138 + t87;
t214 = t137 * t74;
t45 = t207 + t214;
t210 = t45 * t135;
t215 = t135 * t74;
t73 = t83 * t137;
t44 = t73 - t215;
t211 = t44 * t137;
t149 = t211 / 0.2e1 + t210 / 0.2e1;
t84 = t224 * t138;
t206 = t84 * t137;
t82 = qJ(2) - t88;
t69 = pkin(7) * t136 + t82;
t42 = t135 * t69 + t206;
t43 = -t84 * t135 + t137 * t69;
t2 = (-t83 / 0.2e1 + t149) * t138 + (t43 * t219 + t42 * t217 - t84 / 0.2e1) * t136;
t216 = t2 * qJD(3);
t196 = t135 * t138;
t212 = t43 * t137;
t15 = t138 * t212 + t42 * t196;
t3 = (-t135 * t44 + t137 * t45) * t136 + t15;
t213 = t3 * qJD(1);
t6 = (t44 - t73) * t138 + (t42 - t206) * t136;
t209 = t6 * qJD(1);
t197 = t135 * t136;
t7 = -t43 * t136 + t45 * t138 - t83 * t196 - t84 * t197;
t208 = t7 * qJD(1);
t205 = qJD(1) * t15;
t21 = t135 * t42 + t212;
t204 = qJD(1) * t21;
t22 = -t138 * t42 - t83 * t195;
t203 = qJD(1) * t22;
t23 = -t138 * t43 + t83 * t197;
t202 = qJD(1) * t23;
t132 = t136 ^ 2;
t134 = t138 ^ 2;
t95 = t132 - t134;
t78 = t95 * t135;
t201 = qJD(1) * t78;
t81 = t95 * t137;
t200 = qJD(1) * t81;
t198 = t132 * t137;
t46 = t136 * t87 + t138 * t82;
t194 = t46 * qJD(1);
t47 = -t82 * t136 + t138 * t87;
t193 = t47 * qJD(1);
t80 = (t131 + t133) * t136;
t55 = t138 * t80;
t192 = t55 * qJD(1);
t160 = -0.1e1 / 0.2e1 - t134 / 0.2e1 - t132 / 0.2e1;
t56 = t160 * t135;
t191 = t56 * qJD(1);
t59 = t160 * t137;
t190 = t59 * qJD(1);
t70 = (t220 + t221) * t136;
t189 = t70 * qJD(5);
t188 = t80 * qJD(1);
t187 = t82 * qJD(1);
t186 = t95 * qJD(1);
t185 = qJD(2) * t138;
t184 = qJD(4) * t138;
t183 = qJD(5) * t135;
t182 = qJD(5) * t137;
t181 = qJD(5) * t138;
t180 = qJD(5) * t139;
t179 = t134 * qJD(1);
t178 = t135 * qJD(3);
t117 = t136 * qJD(1);
t116 = t136 * qJD(3);
t176 = t136 * qJD(5);
t175 = t137 * qJD(3);
t119 = t138 * qJD(1);
t118 = t138 * qJD(3);
t174 = t87 * t187;
t173 = t82 * t119;
t172 = qJ(2) * t117;
t171 = qJ(2) * t119;
t170 = t135 * t175;
t169 = t136 * t175;
t168 = t140 * t118;
t167 = t135 * t181;
t166 = t137 * t181;
t165 = t135 * t182;
t108 = t136 * t118;
t107 = t136 * t119;
t163 = -qJD(2) + t184;
t162 = t137 * t107;
t161 = t132 * t165;
t159 = (t140 / 0.2e1 - pkin(4) / 0.2e1) * t136;
t158 = qJD(3) * t164;
t4 = -t42 * t44 + t43 * t45 + t83 * t84;
t156 = t4 * qJD(1) - t2 * qJD(2);
t155 = t210 + t211;
t52 = -t138 * t136 + t55;
t154 = -t2 * qJD(1) - t52 * qJD(2);
t151 = -t179 - t181;
t150 = qJD(4) * t134 - t185;
t127 = qJD(3) * qJ(4);
t58 = (-t133 / 0.2e1 + 0.1e1 / 0.2e1 + t221) * t136;
t9 = t159 - t149;
t148 = qJD(1) * t9 + qJD(2) * t58 + t127;
t147 = -t139 * t138 / 0.2e1 + t120 / 0.2e1;
t141 = t74 / 0.2e1 + t147;
t41 = t141 * t137;
t146 = qJ(4) * t178 - qJD(1) * t41;
t40 = t141 * t135;
t145 = -qJ(4) * t175 - qJD(1) * t40;
t51 = -qJD(1) * t70 + t170;
t144 = (-qJD(5) - t119) * t197;
t48 = qJD(1) * t135 * t198 + qJD(3) * t70;
t79 = t94 * t132;
t143 = qJD(1) * t79 + t158;
t130 = qJ(2) * qJD(2);
t129 = qJ(4) * qJD(4);
t128 = qJD(1) * qJ(2);
t112 = -t116 / 0.2e1;
t111 = t140 * t116;
t109 = t137 * t176;
t106 = t137 * t118;
t105 = t137 * t119;
t104 = t135 * t118;
t103 = t135 * t116;
t102 = t135 * t119;
t89 = t95 * qJD(3);
t77 = -t105 - t182;
t76 = -t102 - t183;
t75 = t107 + t176 / 0.2e1;
t61 = t134 * t217 + t198 / 0.2e1 - t137 / 0.2e1;
t60 = t219 + (t132 + t134) * t135 / 0.2e1;
t57 = (t131 / 0.2e1 + 0.1e1 / 0.2e1 + t220) * t136;
t25 = -t207 - t214 / 0.2e1 + t147 * t137;
t24 = t73 - t215 / 0.2e1 + t147 * t135;
t8 = t159 + t149;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2), t130, -t108, t89, 0, t108, 0, 0, qJ(2) * t118 + qJD(2) * t136, -qJ(2) * t116 + t185, 0, t130, 0, 0, 0, -t108, t89, t108, 0, -t46 * qJD(3) + t163 * t136, -qJD(3) * t47 + t150, (qJD(3) * t87 - t163) * t82, t131 * t108 + t161, -qJD(5) * t79 + t138 * t158, -qJD(3) * t78 + t136 * t166, t133 * t108 - t161, -qJD(3) * t81 - t136 * t167, -t108, t6 * qJD(3) + t23 * qJD(5) + t150 * t135, -t7 * qJD(3) - t22 * qJD(5) + t150 * t137, qJD(2) * t80 + qJD(3) * t3 - qJD(4) * t55, qJD(2) * t21 + qJD(3) * t4 - qJD(4) * t15; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(1), t128, 0, 0, 0, 0, 0, 0, t117, t119, 0, t128, 0, 0, 0, 0, 0, 0, 0, -t117, -t119, t187, 0, 0, 0, 0, 0, 0, qJD(5) * t60 - t102, qJD(5) * t61 - t105, t188, t204 - t216; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t107, t186, -t116, t107, -t118, 0, -t111 + t171, -t168 - t172, 0, 0, 0, t116, t118, -t107, t186, t107, -t152, t111 - t194, t168 - t193, t152 * t140 + t174, t189 + (t131 * t117 + t170) * t138, -0.2e1 * t136 * t165 + t142 * t138, -t169 - t201, -t189 + (t133 * t117 - t170) * t138, t103 - t200, -t75, t24 * qJD(5) - t222 * t137 + t84 * t178 + t209, t25 * qJD(5) + t222 * t135 + t84 * t175 - t208, -qJD(3) * t155 + t213, (t84 * qJ(4) + t139 * t155) * qJD(3) + t8 * qJD(4) + t156; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t116, t107, t179, t111 - t173, 0, 0, 0, 0, 0, 0, t135 * t179 - t169, t137 * t179 + t103, -t192, qJD(3) * t8 - t205; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t48, -t143, t109 + t162, -t48, t144, t112, qJD(2) * t60 + qJD(3) * t24 - qJD(5) * t43 + t202, qJD(2) * t61 + qJD(3) * t25 + qJD(5) * t42 - t203, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(1), -t128, 0, 0, 0, 0, 0, 0, -t117, -t119, 0, -t128, 0, 0, 0, 0, 0, 0, 0, t117, t119, -t187, 0, 0, 0, 0, 0, 0, -qJD(5) * t56 + t102, -qJD(5) * t59 + t105, -t188, -t204 - t216; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t52 * qJD(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t116, -t118, 0, 0, 0, 0, 0, 0, 0, 0, 0, t116, t118, t152, 0, 0, 0, 0, 0, 0, t109 + t104, -t135 * t176 + t106, -t80 * qJD(3), (t139 * t80 + t121) * qJD(3) + t57 * qJD(4) + t154; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t116, 0, 0, 0, 0, 0, 0, 0, 0, 0, t57 * qJD(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t167 + t169 - t191, -t103 + t166 - t190, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t107, -t186, 0, -t107, 0, 0, -t171, t172, 0, 0, 0, 0, 0, t107, -t186, -t107, 0, t194, t193, -t174, -t131 * t107 + t189, 0.2e1 * t137 * t144, -t167 + t201, -t133 * t107 - t189, -t166 + t200, t75, qJD(5) * t40 - t209, qJD(5) * t41 + t208, -t213, qJD(4) * t9 - t156; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4) * t58 - t154; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4), t129, -t165, t94 * qJD(5), 0, t165, 0, 0, qJ(4) * t182 + qJD(4) * t135, -qJ(4) * t183 + qJD(4) * t137, 0, t129; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3), t127, 0, 0, 0, 0, 0, 0, t178, t175, 0, t148; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t51, -t142, t76, t51, t77, t117 / 0.2e1, -t135 * t180 - t145, -t137 * t180 - t146, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t107, -t179, t173, 0, 0, 0, 0, 0, 0, t151 * t135, t151 * t137, t192, -qJD(3) * t9 + t205; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t58 * qJD(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3), -t127, 0, 0, 0, 0, 0, 0, -t178, -t175, 0, -t148; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t76, t77, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t48, t143, t104 - t162, t48, t135 * t107 + t106, t112, qJD(2) * t56 - qJD(3) * t40 + t135 * t184 - t202, qJD(2) * t59 - qJD(3) * t41 + t137 * t184 + t203, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t191, t190, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t51, t142, t102, -t51, t105, -t117 / 0.2e1, t145, t146, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t102, t105, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t1;