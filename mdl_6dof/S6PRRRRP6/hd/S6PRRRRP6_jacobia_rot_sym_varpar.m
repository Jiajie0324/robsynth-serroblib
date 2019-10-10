% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6PRRRRP6
% Use Code from Maple symbolic Code Generation
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% Zeitableitung der Winkeldarstellung des Endeffektors in Basis-Koordinaten
% 
% Winkeldarstellung: Euler-XYZ-Winkel, rotx(alpha)*roty(beta)*rotz(gamma)
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt.
%   Wie in S6PRRRRP6_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d2,d3,d4,d5,theta1]';
% 
% Output:
% Ja_rot [3x6]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 23:11
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S6PRRRRP6_jacobia_rot_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRRP6_jacobia_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6PRRRRP6_jacobia_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRRRP6_jacobia_rot_sym_varpar: pkin has to be [12x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:11:38
	% EndTime: 2019-10-09 23:11:38
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:11:38
	% EndTime: 2019-10-09 23:11:38
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:11:38
	% EndTime: 2019-10-09 23:11:38
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (10->0), mult. (27->0), div. (5->0), fcn. (35->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 1, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:11:38
	% EndTime: 2019-10-09 23:11:38
	% DurationCPUTime: 0.17s
	% Computational Cost: add. (179->22), mult. (525->56), div. (35->9), fcn. (736->13), ass. (0->37)
	t45 = sin(pkin(12));
	t48 = cos(pkin(12));
	t54 = cos(qJ(2));
	t50 = cos(pkin(6));
	t52 = sin(qJ(2));
	t58 = t50 * t52;
	t43 = -t45 * t58 + t48 * t54;
	t51 = sin(qJ(3));
	t63 = t43 * t51;
	t53 = cos(qJ(3));
	t62 = t43 * t53;
	t46 = sin(pkin(7));
	t47 = sin(pkin(6));
	t61 = t46 * t47;
	t49 = cos(pkin(7));
	t60 = t47 * t49;
	t59 = t47 * t52;
	t57 = t50 * t54;
	t42 = -t45 * t57 - t48 * t52;
	t55 = t42 * t49 + t45 * t61;
	t32 = t55 * t51 + t62;
	t30 = 0.1e1 / t32 ^ 2;
	t31 = -t55 * t53 + t63;
	t56 = t31 ^ 2 * t30 + 0.1e1;
	t41 = -t45 * t54 - t48 * t58;
	t40 = t50 * t49 - t54 * t61;
	t39 = 0.1e1 / t40 ^ 2;
	t38 = -t42 * t46 + t45 * t60;
	t37 = (-t45 * t52 + t48 * t57) * t46 + t48 * t60;
	t36 = atan2(t37, t40);
	t34 = cos(t36);
	t33 = sin(t36);
	t29 = 0.1e1 / t56;
	t28 = t33 * t37 + t34 * t40;
	t27 = 0.1e1 / t28 ^ 2;
	t25 = (t41 / t40 - t37 * t39 * t59) * t46 / (t37 ^ 2 * t39 + 0.1e1);
	t1 = [0, t25, 0, 0, 0, 0; 0, (t43 * t46 / t28 - ((t33 * t41 + t34 * t59) * t46 + (-t33 * t40 + t34 * t37) * t25) * t38 * t27) / (t38 ^ 2 * t27 + 0.1e1), 0, 0, 0, 0; 0, ((t42 * t51 + t49 * t62) / t32 - (t42 * t53 - t49 * t63) * t31 * t30) * t29, t56 * t29, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:11:38
	% EndTime: 2019-10-09 23:11:38
	% DurationCPUTime: 0.35s
	% Computational Cost: add. (607->40), mult. (1825->97), div. (65->9), fcn. (2498->15), ass. (0->60)
	t87 = sin(pkin(7));
	t88 = sin(pkin(6));
	t109 = t88 * t87;
	t89 = cos(pkin(12));
	t90 = cos(pkin(7));
	t91 = cos(pkin(6));
	t97 = cos(qJ(2));
	t106 = t91 * t97;
	t86 = sin(pkin(12));
	t94 = sin(qJ(2));
	t99 = t89 * t106 - t86 * t94;
	t116 = -t89 * t109 + t99 * t90;
	t107 = t91 * t94;
	t81 = t89 * t107 + t86 * t97;
	t93 = sin(qJ(3));
	t96 = cos(qJ(3));
	t66 = -t116 * t96 + t81 * t93;
	t108 = t90 * t96;
	t110 = t87 * t91;
	t75 = -t96 * t110 + (-t97 * t108 + t93 * t94) * t88;
	t65 = atan2(-t66, t75);
	t62 = sin(t65);
	t63 = cos(t65);
	t56 = -t62 * t66 + t63 * t75;
	t55 = 0.1e1 / t56 ^ 2;
	t103 = t86 * t109;
	t83 = -t86 * t107 + t89 * t97;
	t111 = t83 * t93;
	t82 = -t86 * t106 - t89 * t94;
	t69 = -t96 * t103 - t82 * t108 + t111;
	t115 = t55 * t69;
	t70 = t83 * t96 + (t82 * t90 + t103) * t93;
	t77 = t86 * t88 * t90 - t82 * t87;
	t92 = sin(qJ(4));
	t95 = cos(qJ(4));
	t61 = t70 * t95 + t77 * t92;
	t59 = 0.1e1 / t61 ^ 2;
	t60 = t70 * t92 - t77 * t95;
	t114 = t59 * t60;
	t74 = 0.1e1 / t75 ^ 2;
	t113 = t66 * t74;
	t112 = t83 * t87;
	t105 = t93 * t97;
	t104 = t94 * t96;
	t101 = t60 ^ 2 * t59 + 0.1e1;
	t100 = -t62 * t75 - t63 * t66;
	t80 = (t90 * t104 + t105) * t88;
	t76 = t93 * t110 + (t90 * t105 + t104) * t88;
	t73 = 0.1e1 / t75;
	t72 = -t90 * t111 + t82 * t96;
	t71 = t81 * t108 + t99 * t93;
	t68 = t116 * t93 + t81 * t96;
	t64 = 0.1e1 / (t66 ^ 2 * t74 + 0.1e1);
	t58 = 0.1e1 / t61;
	t57 = 0.1e1 / t101;
	t54 = 0.1e1 / t56;
	t53 = 0.1e1 / (t69 ^ 2 * t55 + 0.1e1);
	t52 = (t80 * t113 - t71 * t73) * t64;
	t51 = (t76 * t113 - t68 * t73) * t64;
	t1 = [0, t52, t51, 0, 0, 0; 0, ((t83 * t108 + t82 * t93) * t54 - (t100 * t52 - t62 * t71 + t63 * t80) * t115) * t53, (t70 * t54 - (t100 * t51 - t62 * t68 + t63 * t76) * t115) * t53, 0, 0, 0; 0, ((-t95 * t112 + t72 * t92) * t58 - (t92 * t112 + t72 * t95) * t114) * t57, (t95 * t114 - t92 * t58) * t69 * t57, t101 * t57, 0, 0;];
	Ja_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:11:38
	% EndTime: 2019-10-09 23:11:38
	% DurationCPUTime: 0.58s
	% Computational Cost: add. (1524->59), mult. (4378->143), div. (95->9), fcn. (6002->17), ass. (0->75)
	t122 = sin(pkin(6));
	t128 = sin(qJ(3));
	t129 = sin(qJ(2));
	t132 = cos(qJ(3));
	t133 = cos(qJ(2));
	t124 = cos(pkin(7));
	t146 = t124 * t128;
	t121 = sin(pkin(7));
	t125 = cos(pkin(6));
	t150 = t121 * t125;
	t112 = t128 * t150 + (t129 * t132 + t133 * t146) * t122;
	t148 = t122 * t121;
	t114 = t125 * t124 - t133 * t148;
	t127 = sin(qJ(4));
	t131 = cos(qJ(4));
	t104 = t112 * t127 - t114 * t131;
	t120 = sin(pkin(12));
	t123 = cos(pkin(12));
	t144 = t125 * t129;
	t115 = t120 * t133 + t123 * t144;
	t143 = t125 * t133;
	t136 = -t120 * t129 + t123 * t143;
	t134 = -t123 * t148 + t136 * t124;
	t101 = t115 * t132 + t134 * t128;
	t147 = t122 * t124;
	t135 = -t136 * t121 - t123 * t147;
	t91 = t101 * t127 - t135 * t131;
	t90 = atan2(-t91, t104);
	t87 = sin(t90);
	t88 = cos(t90);
	t81 = t104 * t88 - t87 * t91;
	t80 = 0.1e1 / t81 ^ 2;
	t116 = -t120 * t143 - t123 * t129;
	t117 = -t120 * t144 + t123 * t133;
	t139 = t120 * t148;
	t103 = t117 * t132 + (t116 * t124 + t139) * t128;
	t137 = -t116 * t121 + t120 * t147;
	t94 = t103 * t127 - t137 * t131;
	t154 = t80 * t94;
	t145 = t124 * t132;
	t102 = -t116 * t145 + t117 * t128 - t132 * t139;
	t126 = sin(qJ(5));
	t130 = cos(qJ(5));
	t95 = t103 * t131 + t137 * t127;
	t86 = t102 * t126 + t130 * t95;
	t84 = 0.1e1 / t86 ^ 2;
	t85 = -t102 * t130 + t126 * t95;
	t153 = t84 * t85;
	t99 = 0.1e1 / t104 ^ 2;
	t152 = t91 * t99;
	t151 = t102 * t131;
	t149 = t121 * t131;
	t142 = t128 * t129;
	t141 = t132 * t133;
	t140 = t84 * t85 ^ 2 + 0.1e1;
	t138 = -t104 * t87 - t88 * t91;
	t111 = t132 * t150 + (t124 * t141 - t142) * t122;
	t108 = ((-t124 * t142 + t141) * t127 - t129 * t149) * t122;
	t107 = t116 * t132 - t117 * t146;
	t106 = t116 * t128 + t117 * t145;
	t105 = t112 * t131 + t114 * t127;
	t100 = -t115 * t128 + t134 * t132;
	t98 = 0.1e1 / t104;
	t97 = t117 * t121 * t127 + t107 * t131;
	t96 = (-t115 * t146 + t136 * t132) * t127 - t115 * t149;
	t93 = t101 * t131 + t135 * t127;
	t89 = 0.1e1 / (t91 ^ 2 * t99 + 0.1e1);
	t83 = 0.1e1 / t86;
	t82 = 0.1e1 / t140;
	t79 = 0.1e1 / t81;
	t78 = 0.1e1 / (t80 * t94 ^ 2 + 0.1e1);
	t77 = (-t100 * t98 + t111 * t152) * t89 * t127;
	t76 = (t108 * t152 - t96 * t98) * t89;
	t75 = (t105 * t152 - t93 * t98) * t89;
	t1 = [0, t76, t77, t75, 0, 0; 0, ((t107 * t127 - t117 * t149) * t79 - (t108 * t88 + t138 * t76 - t87 * t96) * t154) * t78, (-t102 * t127 * t79 - (t138 * t77 + (-t100 * t87 + t111 * t88) * t127) * t154) * t78, (t95 * t79 - (t105 * t88 + t138 * t75 - t87 * t93) * t154) * t78, 0, 0; 0, ((-t106 * t130 + t97 * t126) * t83 - (t106 * t126 + t130 * t97) * t153) * t82, ((-t103 * t130 - t126 * t151) * t83 - (t103 * t126 - t130 * t151) * t153) * t82, (-t126 * t83 + t130 * t153) * t94 * t82, t140 * t82, 0;];
	Ja_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:11:38
	% EndTime: 2019-10-09 23:11:39
	% DurationCPUTime: 0.88s
	% Computational Cost: add. (2847->74), mult. (8194->173), div. (117->9), fcn. (11175->17), ass. (0->85)
	t153 = sin(pkin(12));
	t156 = cos(pkin(12));
	t166 = cos(qJ(2));
	t158 = cos(pkin(6));
	t162 = sin(qJ(2));
	t177 = t158 * t162;
	t148 = t153 * t166 + t156 * t177;
	t161 = sin(qJ(3));
	t165 = cos(qJ(3));
	t176 = t158 * t166;
	t147 = -t153 * t162 + t156 * t176;
	t157 = cos(pkin(7));
	t154 = sin(pkin(7));
	t155 = sin(pkin(6));
	t183 = t154 * t155;
	t168 = -t147 * t157 + t156 * t183;
	t167 = t148 * t161 + t168 * t165;
	t134 = t148 * t165 - t168 * t161;
	t180 = t155 * t157;
	t143 = -t147 * t154 - t156 * t180;
	t160 = sin(qJ(4));
	t164 = cos(qJ(4));
	t127 = t134 * t164 + t143 * t160;
	t159 = sin(qJ(5));
	t163 = cos(qJ(5));
	t114 = t127 * t159 - t167 * t163;
	t172 = t162 * t165;
	t173 = t161 * t166;
	t182 = t154 * t158;
	t142 = t161 * t182 + (t157 * t173 + t172) * t155;
	t146 = t158 * t157 - t166 * t183;
	t138 = t142 * t164 + t146 * t160;
	t171 = t165 * t166;
	t174 = t161 * t162;
	t141 = -t165 * t182 + (-t157 * t171 + t174) * t155;
	t124 = t138 * t159 - t141 * t163;
	t111 = atan2(-t114, t124);
	t107 = sin(t111);
	t108 = cos(t111);
	t106 = -t107 * t114 + t108 * t124;
	t105 = 0.1e1 / t106 ^ 2;
	t149 = -t153 * t176 - t156 * t162;
	t150 = -t153 * t177 + t156 * t166;
	t170 = t153 * t183;
	t136 = t150 * t165 + (t149 * t157 + t170) * t161;
	t144 = -t149 * t154 + t153 * t180;
	t129 = t136 * t164 + t144 * t160;
	t178 = t157 * t165;
	t135 = -t149 * t178 + t150 * t161 - t165 * t170;
	t185 = t135 * t163;
	t117 = t129 * t159 - t185;
	t189 = t105 * t117;
	t118 = t129 * t163 + t135 * t159;
	t113 = 0.1e1 / t118 ^ 2;
	t128 = -t136 * t160 + t144 * t164;
	t188 = t113 * t128;
	t122 = 0.1e1 / t124 ^ 2;
	t187 = t114 * t122;
	t186 = t128 ^ 2 * t113;
	t181 = t154 * t160;
	t179 = t157 * t161;
	t175 = t159 * t164;
	t169 = -t107 * t124 - t108 * t114;
	t140 = t149 * t165 - t150 * t179;
	t139 = t149 * t161 + t150 * t178;
	t137 = -t142 * t160 + t146 * t164;
	t132 = (((-t157 * t174 + t171) * t164 + t162 * t181) * t159 - (t157 * t172 + t173) * t163) * t155;
	t131 = t140 * t164 + t150 * t181;
	t130 = -t141 * t175 - t142 * t163;
	t126 = -t134 * t160 + t143 * t164;
	t125 = t138 * t163 + t141 * t159;
	t121 = 0.1e1 / t124;
	t120 = ((t147 * t165 - t148 * t179) * t164 + t148 * t181) * t159 - (t147 * t161 + t148 * t178) * t163;
	t119 = -t134 * t163 - t167 * t175;
	t116 = t127 * t163 + t167 * t159;
	t112 = 0.1e1 / t118;
	t110 = 0.1e1 / (0.1e1 + t186);
	t109 = 0.1e1 / (t114 ^ 2 * t122 + 0.1e1);
	t104 = 0.1e1 / t106;
	t103 = 0.1e1 / (t117 ^ 2 * t105 + 0.1e1);
	t102 = (-t121 * t126 + t137 * t187) * t159 * t109;
	t101 = (-t120 * t121 + t132 * t187) * t109;
	t100 = (-t119 * t121 + t130 * t187) * t109;
	t99 = (-t116 * t121 + t125 * t187) * t109;
	t1 = [0, t101, t100, t102, t99, 0; 0, ((t131 * t159 - t139 * t163) * t104 - (t169 * t101 - t107 * t120 + t108 * t132) * t189) * t103, ((-t135 * t175 - t136 * t163) * t104 - (t169 * t100 - t107 * t119 + t108 * t130) * t189) * t103, (t128 * t159 * t104 - ((-t107 * t126 + t108 * t137) * t159 + t169 * t102) * t189) * t103, (t118 * t104 - ((-t114 * t99 + t125) * t108 + (-t124 * t99 - t116) * t107) * t189) * t103, 0; 0, ((t150 * t154 * t164 - t140 * t160) * t112 - (t131 * t163 + t139 * t159) * t188) * t110, (t135 * t160 * t112 - (t136 * t159 - t164 * t185) * t188) * t110, (-t112 * t129 - t163 * t186) * t110, t117 * t110 * t188, 0;];
	Ja_rot = t1;
else
	Ja_rot=NaN(3,6);
end