% Calculate minimal parameter regressor of coriolis matrix for
% S6RPPRPR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d6,theta2,theta3]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x26]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 01:42
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RPPRPR2_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRPR2_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRPR2_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPRPR2_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 01:42:40
% EndTime: 2019-03-09 01:42:44
% DurationCPUTime: 1.79s
% Computational Cost: add. (1890->175), mult. (3768->234), div. (0->0), fcn. (4169->8), ass. (0->146)
t129 = sin(qJ(6));
t126 = sin(pkin(10));
t127 = cos(pkin(10));
t130 = sin(qJ(4));
t216 = cos(qJ(4));
t113 = t216 * t126 + t130 * t127;
t120 = sin(pkin(9)) * pkin(1) + qJ(3);
t214 = pkin(7) + t120;
t94 = t214 * t126;
t95 = t214 * t127;
t46 = t130 * t95 + t216 * t94;
t144 = t113 * pkin(5) + t46;
t210 = t129 * t144;
t131 = cos(qJ(6));
t224 = t131 * t144;
t121 = t216 * t127;
t203 = t130 * t126;
t111 = -t121 + t203;
t217 = pkin(4) + pkin(8);
t223 = t217 * t111;
t222 = t217 * t113;
t180 = qJD(6) * t129;
t53 = t129 * t113;
t189 = t53 * qJD(1);
t221 = t189 + t180;
t108 = t111 ^ 2;
t218 = t113 ^ 2;
t220 = -t218 - t108;
t164 = t218 - t108;
t124 = t129 ^ 2;
t125 = t131 ^ 2;
t119 = t124 - t125;
t57 = t131 * t111;
t154 = 0.2e1 * t129 * t57;
t136 = qJD(1) * t154 - t119 * qJD(4);
t205 = qJ(5) * t111;
t148 = pkin(4) * t113 + t205;
t168 = t113 * qJD(5);
t219 = -qJD(4) * t148 + t168;
t215 = t111 * pkin(4);
t115 = -cos(pkin(9)) * pkin(1) - t127 * pkin(3) - pkin(2);
t204 = t113 * qJ(5);
t133 = t115 - t204;
t29 = t133 + t223;
t12 = t129 * t29 - t224;
t42 = t205 + t222;
t212 = t129 * t42;
t1 = -t113 * t212 + (t12 + t224) * t111;
t213 = t1 * qJD(1);
t211 = t131 * t42;
t47 = -t130 * t94 + t216 * t95;
t36 = -t111 * pkin(5) + t47;
t209 = t36 * t129;
t44 = t133 + t215;
t4 = t44 * t148;
t208 = t4 * qJD(1);
t7 = t12 * t113 + t36 * t57;
t207 = t7 * qJD(1);
t13 = t131 * t29 + t210;
t8 = t111 * t209 - t13 * t113;
t206 = t8 * qJD(1);
t14 = -t47 * t111 + t46 * t113;
t202 = t14 * qJD(1);
t15 = -t111 * t148 - t44 * t113;
t201 = t15 * qJD(1);
t16 = t44 * t111 - t113 * t148;
t200 = t16 * qJD(1);
t196 = t148 * qJD(1);
t25 = t220 * t129;
t195 = t25 * qJD(1);
t39 = t164 * t129;
t194 = t39 * qJD(1);
t40 = t164 * t131;
t193 = t40 * qJD(1);
t41 = t220 * t131;
t192 = t41 * qJD(1);
t191 = t164 * qJD(1);
t190 = t46 * qJD(4);
t45 = t47 * qJD(4);
t188 = t53 * qJD(6);
t187 = t57 * qJD(1);
t186 = t57 * qJD(4);
t185 = t220 * qJD(1);
t116 = t126 ^ 2 + t127 ^ 2;
t72 = t116 * t120;
t184 = t72 * qJD(1);
t183 = qJD(1) * t129;
t182 = qJD(4) * qJ(5);
t181 = qJD(5) * t129;
t179 = qJD(6) * t131;
t178 = qJD(6) * t217;
t107 = t203 / 0.2e1 - t121 / 0.2e1;
t177 = t107 * qJD(1);
t176 = t218 * qJD(1);
t175 = t218 * qJD(5);
t174 = t111 * qJD(1);
t173 = t111 * qJD(3);
t172 = t111 * qJD(4);
t171 = t111 * qJD(5);
t170 = t113 * qJD(1);
t103 = t113 * qJD(3);
t169 = t113 * qJD(4);
t167 = t116 * qJD(1);
t166 = t129 * qJD(4);
t165 = t131 * qJD(4);
t163 = t44 * t170;
t162 = t113 * t180;
t161 = t113 * t179;
t70 = t111 * t170;
t69 = t111 * t169;
t160 = t129 * t174;
t159 = t111 * t166;
t158 = t129 * t170;
t157 = t218 * t183;
t156 = t129 * t179;
t87 = t131 * t170;
t155 = t129 * t165;
t153 = t107 * qJD(6) + t70;
t152 = qJD(1) * t115 + qJD(3);
t151 = qJD(6) + t170;
t149 = qJD(4) * t154;
t2 = (t13 - t210) * t111 - t113 * t211;
t147 = t2 * qJD(1);
t146 = t204 - t223;
t145 = t151 * t129;
t143 = t222 / 0.2e1 + t205 / 0.2e1;
t134 = t42 / 0.2e1 + t143;
t19 = t134 * t131;
t142 = qJ(5) * t166 - t19 * qJD(1);
t18 = t134 * t129;
t141 = -qJ(5) * t165 - t18 * qJD(1);
t55 = (t125 / 0.2e1 - t124 / 0.2e1) * t111;
t140 = -t55 * qJD(1) + t155;
t139 = t111 * t145;
t138 = t108 * t131 * t183 + t55 * qJD(4);
t58 = t119 * t108;
t137 = t58 * qJD(1) + t149;
t135 = -t159 + t161;
t89 = t107 * qJD(4);
t88 = t111 * t165;
t86 = t113 * t165;
t71 = -t87 - t179;
t51 = t55 * qJD(6);
t11 = -t209 - t211 / 0.2e1 + t143 * t131;
t10 = t36 * t131 - t212 / 0.2e1 + t143 * t129;
t3 = [0, 0, 0, 0, 0, 0, t116 * qJD(3), t72 * qJD(3), -t69, -t164 * qJD(4), 0, 0, 0, t115 * t169, -t115 * t172, -t220 * qJD(3), t15 * qJD(4) + t111 * t168, t16 * qJD(4) + t175, t14 * qJD(3) + t4 * qJD(4) - t168 * t44, t108 * t156 + t124 * t69, -t58 * qJD(6) + t113 * t149, t39 * qJD(4) + t111 * t161, t40 * qJD(4) - t111 * t162, -t69, -t41 * qJD(3) + t1 * qJD(4) + t8 * qJD(6) + t218 * t181, t25 * qJD(3) + t2 * qJD(4) + t7 * qJD(6) + t131 * t175; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, t167, t184, 0, 0, 0, 0, 0, 0, 0, -t185, 0, 0, t202, 0, 0, 0, 0, 0, -t192, t195; 0, 0, 0, 0, 0, 0, 0, 0, -t70, -t191, -t172, -t169, 0, t115 * t170 - t45, -t115 * t174 + t190 (-t204 + t215) * qJD(4) - t171, t45 + t201, -t190 + t200, t208 + (-t47 * pkin(4) - t46 * qJ(5)) * qJD(4) + t47 * qJD(5), t51 + (t124 * t174 + t155) * t113, -0.2e1 * t111 * t156 + t136 * t113, -t88 + t194, t159 + t193, -t153, t213 + (-t131 * t146 - t210) * qJD(4) - t57 * qJD(5) + t10 * qJD(6), -t144 * t165 + t11 * qJD(6) + (qJD(4) * t146 + t171) * t129 + t147; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t172, t70, t176, t45 - t163, 0, 0, 0, 0, 0, t157 - t186, t131 * t176 + t159; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t138, -t137, t151 * t57, -t139, -t89, t10 * qJD(4) - t13 * qJD(6) + t206, t11 * qJD(4) + t12 * qJD(6) + t207; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t169, t172, 0, t169, -t172, t219, 0, 0, 0, 0, 0, t135, -t162 - t88; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t169, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t111 * t180 + t86, -t111 * t179 - t113 * t166; 0, 0, 0, 0, 0, 0, -t167, -t184, 0, 0, 0, 0, 0, t169, -t172, t185, -t169, t172, -t202 - t219, 0, 0, 0, 0, 0, -t135 + t192, t186 + t188 - t195; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t170, -t174, 0, -t170, t174, t196, 0, 0, 0, 0, 0, t160, t187; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t170, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t71, t221; 0, 0, 0, 0, 0, 0, 0, 0, t70, t191, 0, 0, 0, -t152 * t113, t152 * t111, 0, t103 - t201, -t173 - t200, -qJD(3) * t148 - t208, -t124 * t70 + t51, -0.2e1 * t131 * t139, -t162 - t194, -t161 - t193, t153, t18 * qJD(6) - t129 * t173 - t213, -t57 * qJD(3) + t19 * qJD(6) - t147; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t170, t174, 0, t170, -t174, -t196, 0, 0, 0, 0, 0, -t160, -t187; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(5), qJ(5) * qJD(5), -t156, t119 * qJD(6), 0, 0, 0, qJ(5) * t179 + t181, -qJ(5) * t180 + qJD(5) * t131; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4), t182, 0, 0, 0, 0, 0, t166, t165; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t140, -t136, -t145, t71, t177, t129 * t178 - t141, t131 * t178 - t142; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t70, -t176, t103 + t163, 0, 0, 0, 0, 0, -t157 - t188 (-qJD(6) * t113 - t176) * t131; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t170, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(4), -t182, 0, 0, 0, 0, 0, -t166, -t165; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t221, -t151 * t131; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t138, t137 (-t131 * t174 + t166) * t113, t111 * t158 + t86, -t89, -t18 * qJD(4) + t53 * qJD(5) + t103 * t131 - t206, -t53 * qJD(3) - t19 * qJD(4) + t131 * t168 - t207; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t87, -t189; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t140, t136, t158, t87, -t177, t141, t142; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t189, t87; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t3;