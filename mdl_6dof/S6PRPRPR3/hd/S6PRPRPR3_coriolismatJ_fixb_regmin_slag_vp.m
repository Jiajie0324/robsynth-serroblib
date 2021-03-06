% Calculate minimal parameter regressor of coriolis matrix for
% S6PRPRPR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d6,theta1,theta3]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x23]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 19:38
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6PRPRPR3_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRPR3_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRPR3_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRPRPR3_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 19:37:42
% EndTime: 2019-03-08 19:37:47
% DurationCPUTime: 1.75s
% Computational Cost: add. (1127->186), mult. (3128->297), div. (0->0), fcn. (3300->10), ass. (0->167)
t119 = sin(qJ(6));
t226 = 0.2e1 * t119;
t123 = cos(qJ(4));
t124 = -pkin(4) - pkin(9);
t225 = t123 * t124;
t122 = cos(qJ(6));
t175 = t123 * qJD(2);
t168 = t122 * t175;
t114 = t119 ^ 2;
t116 = t122 ^ 2;
t96 = t114 - t116;
t128 = qJD(4) * t96 + t168 * t226;
t183 = qJD(5) * t123;
t120 = sin(qJ(4));
t192 = t120 * qJ(5);
t224 = qJD(4) * (t192 - t225) - t183;
t223 = -t120 / 0.2e1;
t222 = -t123 / 0.2e1;
t221 = cos(qJ(2));
t113 = pkin(4) * t120;
t220 = t123 * pkin(4);
t118 = sin(pkin(11));
t108 = pkin(2) * t118 + pkin(8);
t219 = pkin(5) + t108;
t79 = t219 * t120;
t217 = t119 * t79;
t201 = qJ(5) * t123;
t92 = -t113 + t201;
t82 = pkin(9) * t120 - t92;
t216 = t119 * t82;
t202 = sin(pkin(6));
t203 = cos(pkin(11));
t149 = t203 * t202;
t121 = sin(qJ(2));
t157 = t121 * t202;
t70 = t118 * t157 - t221 * t149;
t215 = t122 * t70;
t214 = t122 * t79;
t213 = t122 * t82;
t204 = cos(pkin(6));
t150 = t202 * t221;
t71 = t118 * t150 + t121 * t149;
t55 = t120 * t71 - t204 * t123;
t212 = t55 * t120;
t56 = t204 * t120 + t71 * t123;
t211 = t56 * t123;
t7 = (-t211 + t71 - t212) * t70;
t210 = t7 * qJD(1);
t35 = t70 * t120;
t209 = t71 * t119;
t208 = t71 * t122;
t109 = -t203 * pkin(2) - pkin(3);
t131 = t109 - t192;
t72 = t131 + t225;
t38 = t119 * t72 - t214;
t8 = (-t38 - t214) * t123 - t120 * t216;
t207 = t8 * qJD(2);
t80 = t219 * t123;
t206 = t80 * t119;
t194 = t119 * t120;
t39 = t122 * t72 + t217;
t9 = (t206 + t213) * t120 - t80 * t194 + (t39 - t217) * t123;
t205 = t9 * qJD(2);
t78 = t131 - t220;
t52 = -t120 * t92 + t123 * t78;
t200 = qJD(2) * t52;
t53 = -t120 * t78 - t123 * t92;
t199 = qJD(2) * t53;
t115 = t120 ^ 2;
t117 = t123 ^ 2;
t97 = t117 - t115;
t86 = t97 * t119;
t198 = qJD(2) * t86;
t88 = t97 * t122;
t197 = qJD(2) * t88;
t195 = t117 * t119;
t193 = t119 * t123;
t191 = t122 * t123;
t190 = t97 * qJD(2);
t189 = qJD(2) * t120;
t188 = qJD(2) * t122;
t187 = qJD(4) * qJ(5);
t111 = qJD(4) * t120;
t112 = qJD(4) * t123;
t186 = qJD(5) * t119;
t185 = qJD(5) * t120;
t184 = qJD(5) * t122;
t182 = qJD(6) * t119;
t181 = qJD(6) * t120;
t180 = qJD(6) * t122;
t179 = qJD(6) * t124;
t178 = t115 * qJD(2);
t177 = t119 * qJD(4);
t176 = t122 * qJD(4);
t174 = t123 * qJD(6);
t173 = t70 * t194;
t172 = t122 * t35;
t171 = t78 * t189;
t170 = t109 * t189;
t169 = t109 * t175;
t167 = t108 * t111;
t166 = t119 * t176;
t165 = t123 * t177;
t164 = t119 * t181;
t106 = t119 * t174;
t163 = t120 * t180;
t102 = t120 * t112;
t101 = t120 * t175;
t105 = t123 * t176;
t162 = t119 * t180;
t161 = t122 * t174;
t160 = -t201 / 0.2e1;
t159 = -t193 / 0.2e1;
t158 = -t191 / 0.2e1;
t156 = (-t115 - t117) * t70;
t155 = t191 * t226;
t154 = qJD(6) + t189;
t153 = t119 * t105;
t152 = t119 * t101;
t148 = t119 * t70 - t122 * t55;
t147 = t119 * t55 + t215;
t21 = -t120 * t38 + t80 * t191;
t127 = -t71 / 0.2e1 + t212 / 0.2e1 + t211 / 0.2e1;
t4 = t127 * t122;
t146 = -qJD(1) * t4 - qJD(2) * t21;
t22 = -t120 * t39 - t80 * t193;
t3 = t127 * t119;
t145 = -qJD(1) * t3 + qJD(2) * t22;
t143 = qJD(2) * t35 - t56 * qJD(4);
t37 = t70 * t123;
t142 = qJD(2) * t37 + qJD(4) * t55;
t141 = qJD(4) * t92 + t185;
t140 = -t178 - t181;
t138 = t160 + t113 / 0.2e1;
t1 = (t92 / 0.2e1 + t138) * t70;
t139 = t78 * t92 * qJD(2) + t1 * qJD(1);
t137 = qJD(4) * t37 + t71 * t189;
t136 = -qJD(4) * t35 + t71 * t175;
t135 = t124 * t223 + t160;
t126 = t82 / 0.2e1 + t135;
t47 = t126 * t122;
t134 = qJ(5) * t177 - t47 * qJD(2);
t46 = t126 * t119;
t133 = -qJ(5) * t176 - t46 * qJD(2);
t81 = (t116 / 0.2e1 - t114 / 0.2e1) * t123;
t132 = qJD(2) * t81 + t166;
t130 = -qJD(4) * t81 + t188 * t195;
t87 = t96 * t117;
t129 = -qJD(2) * t87 + 0.2e1 * t153;
t125 = (-t192 - t220) * qJD(4) + t183;
t110 = t112 / 0.2e1;
t104 = t120 * t176;
t103 = t120 * t188;
t100 = t119 * t189;
t89 = t108 * t112;
t85 = -t103 - t180;
t84 = -t100 - t182;
t83 = t101 + t174 / 0.2e1;
t77 = t81 * qJD(6);
t28 = -t206 - t213 / 0.2e1 + t135 * t122;
t27 = t80 * t122 - t216 / 0.2e1 + t135 * t119;
t13 = t147 * t222 + t55 * t193 / 0.2e1 + t70 * t158;
t12 = t148 * t222 + t55 * t158 + t70 * t159;
t6 = t147 * t223 + t56 * t159 - t209 / 0.2e1 - t172 / 0.2e1;
t5 = t148 * t120 / 0.2e1 + t56 * t158 - t208 / 0.2e1 + t173 / 0.2e1;
t2 = (-t92 / 0.2e1 + t138) * t70;
t10 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t7, 0, 0, 0, 0, 0, 0, 0; 0, 0, -qJD(2) * t157, -qJD(2) * t150 (-t118 * t70 - t203 * t71) * qJD(2) * pkin(2), 0, 0, 0, 0, 0, -t136, t137, qJD(2) * t156, t136, -t137, t210 + (t108 * t156 + t71 * t78) * qJD(2) + t2 * qJD(4) - t35 * qJD(5), 0, 0, 0, 0, 0 ((-t172 - t209) * t120 - t117 * t215) * qJD(2) + t12 * qJD(4) + t6 * qJD(6) (-(-t173 + t208) * t120 + t70 * t195) * qJD(2) + t13 * qJD(4) + t5 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t143, t142, 0, -t143, -t142, t2 * qJD(2) + (-pkin(4) * t56 - qJ(5) * t55) * qJD(4) + t56 * qJD(5), 0, 0, 0, 0, 0, qJD(2) * t12 - t177 * t55 + t180 * t56, qJD(2) * t13 - t176 * t55 - t182 * t56; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t143, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t6 * qJD(2) - qJD(6) * t147 + t176 * t56, t5 * qJD(2) + qJD(6) * t148 - t177 * t56; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(4) * t1 - t210, 0, 0, 0, 0, 0, -qJD(6) * t3, -qJD(6) * t4; 0, 0, 0, 0, 0, t102, t97 * qJD(4), 0, 0, 0, t109 * t111, t109 * t112, 0, qJD(4) * t53 - t120 * t183, -qJD(4) * t52 + qJD(5) * t115, -t141 * t78, -t102 * t114 + t117 * t162, -qJD(6) * t87 - 0.2e1 * t120 * t153, -qJD(4) * t86 - t120 * t161, -qJD(4) * t88 + t106 * t120, t102, qJD(4) * t8 + qJD(6) * t22 + t115 * t186, -qJD(4) * t9 - qJD(6) * t21 + t115 * t184; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, t101, t190, t112, -t111, 0, -t89 + t170, t167 + t169, t125, t199 + t89, -t167 - t200, t125 * t108 - t139, -t77 + (-t114 * t175 + t166) * t120, qJD(6) * t155 - t128 * t120, t105 - t198, -t165 - t197, t83, t27 * qJD(6) - t122 * t224 - t79 * t177 + t207, t28 * qJD(6) + t119 * t224 - t79 * t176 - t205; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t112, -t101, t178, -t171 + t89, 0, 0, 0, 0, 0, t119 * t178 + t105, t122 * t178 - t165; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t130, t129, -t154 * t191, t106 + t152, t110, qJD(4) * t27 - qJD(6) * t39 + t145, qJD(4) * t28 + qJD(6) * t38 + t146; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t111, -t112, 0, t111, t112, t141, 0, 0, 0, 0, 0, t163 + t165, t105 - t164; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t111, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t106 + t104, -t120 * t177 + t161; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t1, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, -t101, -t190, 0, 0, 0, -t170, -t169, 0, -t199, t200, t139, t101 * t114 - t77, t154 * t155, -t164 + t198, -t163 + t197, -t83, qJD(6) * t46 - t207, qJD(6) * t47 + t205; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(5), qJ(5) * qJD(5), -t162, t96 * qJD(6), 0, 0, 0, qJ(5) * t180 + t186, -qJ(5) * t182 + t184; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4), t187, 0, 0, 0, 0, 0, t177, t176; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t132, t128, t84, t85, -t175 / 0.2e1, -t119 * t179 - t133, -t122 * t179 - t134; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t101, -t178, t171, 0, 0, 0, 0, 0, t140 * t119, t140 * t122; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(4), -t187, 0, 0, 0, 0, 0, -t177, -t176; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t84, t85; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3 * qJD(2), t4 * qJD(2); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t130, -t129 (t168 + t177) * t120, t104 - t152, t110, -qJD(4) * t46 + t119 * t185 - t145, -qJD(4) * t47 + t120 * t184 - t146; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t132, -t128, t100, t103, t175 / 0.2e1, t133, t134; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t100, t103; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t10;
