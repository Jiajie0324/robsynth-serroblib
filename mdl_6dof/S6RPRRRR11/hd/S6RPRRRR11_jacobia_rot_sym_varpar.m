% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6RPRRRR11
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
%   Wie in S6RPRRRR11_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d3,d4,d5,d6,theta2]';
% 
% Output:
% Ja_rot [3x6]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 09:13
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S6RPRRRR11_jacobia_rot_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRR11_jacobia_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RPRRRR11_jacobia_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RPRRRR11_jacobia_rot_sym_varpar: pkin has to be [13x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:13:37
	% EndTime: 2019-10-10 09:13:37
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:13:37
	% EndTime: 2019-10-10 09:13:37
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (3->0), mult. (6->0), div. (5->0), fcn. (6->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 1, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:13:37
	% EndTime: 2019-10-10 09:13:37
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (25->13), mult. (89->32), div. (20->9), fcn. (140->9), ass. (0->23)
	t28 = cos(pkin(6));
	t26 = sin(pkin(6));
	t30 = cos(qJ(1));
	t32 = t30 * t26;
	t22 = atan2(t32, t28);
	t19 = sin(t22);
	t20 = cos(t22);
	t14 = t19 * t32 + t20 * t28;
	t29 = sin(qJ(1));
	t37 = 0.1e1 / t14 ^ 2 * t29 ^ 2;
	t23 = t26 ^ 2;
	t21 = 0.1e1 / (0.1e1 + t30 ^ 2 * t23 / t28 ^ 2);
	t36 = t21 / t28;
	t25 = sin(pkin(13));
	t35 = t29 * t25;
	t27 = cos(pkin(13));
	t34 = t29 * t27;
	t33 = t30 * t25;
	t31 = t30 * t27;
	t18 = -t28 * t35 + t31;
	t17 = t28 * t34 + t33;
	t16 = 0.1e1 / t18 ^ 2;
	t1 = [-t29 * t26 * t36, 0, 0, 0, 0, 0; (0.1e1 / t14 * t32 - (-t20 * t23 * t30 * t36 + (t21 - 0.1e1) * t26 * t19) * t26 * t37) / (t23 * t37 + 0.1e1), 0, 0, 0, 0, 0; ((t28 * t31 - t35) / t18 - (-t28 * t33 - t34) * t17 * t16) / (t17 ^ 2 * t16 + 0.1e1), 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:13:37
	% EndTime: 2019-10-10 09:13:37
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (156->21), mult. (450->48), div. (25->9), fcn. (637->13), ass. (0->38)
	t61 = cos(pkin(6));
	t59 = cos(pkin(13));
	t65 = cos(qJ(1));
	t69 = t65 * t59;
	t56 = sin(pkin(13));
	t63 = sin(qJ(1));
	t72 = t63 * t56;
	t51 = -t61 * t69 + t72;
	t57 = sin(pkin(7));
	t60 = cos(pkin(7));
	t58 = sin(pkin(6));
	t73 = t58 * t65;
	t46 = -t51 * t57 + t60 * t73;
	t50 = -t58 * t59 * t57 + t61 * t60;
	t45 = atan2(t46, t50);
	t42 = sin(t45);
	t43 = cos(t45);
	t37 = t42 * t46 + t43 * t50;
	t70 = t65 * t56;
	t71 = t63 * t59;
	t53 = -t61 * t71 - t70;
	t74 = t58 * t63;
	t47 = t53 * t57 - t60 * t74;
	t75 = t47 ^ 2 / t37 ^ 2;
	t54 = -t61 * t72 + t69;
	t62 = sin(qJ(3));
	t64 = cos(qJ(3));
	t66 = t53 * t60 + t57 * t74;
	t41 = t54 * t64 + t66 * t62;
	t39 = 0.1e1 / t41 ^ 2;
	t40 = t54 * t62 - t66 * t64;
	t68 = t40 ^ 2 * t39 + 0.1e1;
	t67 = t51 * t60 + t57 * t73;
	t52 = -t61 * t70 - t71;
	t49 = 0.1e1 / t50;
	t44 = 0.1e1 / (0.1e1 + t46 ^ 2 / t50 ^ 2);
	t38 = 0.1e1 / t68;
	t1 = [t47 * t49 * t44, 0, 0, 0, 0, 0; (t46 / t37 + (t42 + (t43 * t46 * t49 - t42) * t44) * t75) / (0.1e1 + t75), 0, 0, 0, 0, 0; ((t52 * t62 - t67 * t64) / t41 - (t52 * t64 + t67 * t62) * t40 * t39) * t38, 0, t68 * t38, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:13:37
	% EndTime: 2019-10-10 09:13:37
	% DurationCPUTime: 0.32s
	% Computational Cost: add. (559->39), mult. (1669->87), div. (55->9), fcn. (2293->15), ass. (0->57)
	t115 = sin(qJ(1));
	t88 = sin(pkin(6));
	t102 = t88 * t115;
	t87 = sin(pkin(7));
	t90 = cos(pkin(7));
	t89 = cos(pkin(13));
	t100 = t115 * t89;
	t86 = sin(pkin(13));
	t96 = cos(qJ(1));
	t106 = t96 * t86;
	t91 = cos(pkin(6));
	t98 = t91 * t100 + t106;
	t116 = -t87 * t102 + t98 * t90;
	t101 = t115 * t86;
	t105 = t96 * t89;
	t83 = -t91 * t101 + t105;
	t93 = sin(qJ(3));
	t95 = cos(qJ(3));
	t72 = -t116 * t93 + t83 * t95;
	t78 = t90 * t102 + t98 * t87;
	t92 = sin(qJ(4));
	t94 = cos(qJ(4));
	t62 = t72 * t94 + t78 * t92;
	t60 = 0.1e1 / t62 ^ 2;
	t61 = t72 * t92 - t78 * t94;
	t114 = t60 * t61;
	t109 = t88 * t96;
	t104 = t87 * t109;
	t107 = t90 * t95;
	t82 = t91 * t106 + t100;
	t111 = t82 * t93;
	t81 = -t91 * t105 + t101;
	t67 = t95 * t104 + t81 * t107 + t111;
	t110 = t87 * t91;
	t75 = -t95 * t110 + (-t89 * t107 + t86 * t93) * t88;
	t66 = atan2(-t67, t75);
	t64 = cos(t66);
	t113 = t64 * t67;
	t63 = sin(t66);
	t57 = -t63 * t67 + t64 * t75;
	t56 = 0.1e1 / t57 ^ 2;
	t71 = t116 * t95 + t83 * t93;
	t112 = t71 ^ 2 * t56;
	t108 = t90 * t93;
	t103 = t61 ^ 2 * t60 + 0.1e1;
	t70 = t93 * t104 + t81 * t108 - t82 * t95;
	t77 = t90 * t109 - t81 * t87;
	t76 = t93 * t110 + (t89 * t108 + t86 * t95) * t88;
	t74 = 0.1e1 / t75 ^ 2;
	t73 = 0.1e1 / t75;
	t65 = 0.1e1 / (t67 ^ 2 * t74 + 0.1e1);
	t59 = 0.1e1 / t62;
	t58 = 0.1e1 / t103;
	t55 = 0.1e1 / t57;
	t54 = 0.1e1 / (0.1e1 + t112);
	t53 = (t67 * t74 * t76 + t70 * t73) * t65;
	t1 = [-t71 * t73 * t65, 0, t53, 0, 0, 0; ((-t111 + (-t81 * t90 - t104) * t95) * t55 - (-t63 + (t73 * t113 + t63) * t65) * t112) * t54, 0, (t72 * t55 - (t63 * t70 + t64 * t76 + (-t63 * t75 - t113) * t53) * t71 * t56) * t54, 0, 0, 0; ((t70 * t92 - t77 * t94) * t59 - (t70 * t94 + t77 * t92) * t114) * t58, 0, (t94 * t114 - t92 * t59) * t71 * t58, t103 * t58, 0, 0;];
	Ja_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:13:37
	% EndTime: 2019-10-10 09:13:38
	% DurationCPUTime: 0.58s
	% Computational Cost: add. (1440->49), mult. (4121->118), div. (85->9), fcn. (5660->17), ass. (0->69)
	t119 = cos(pkin(6));
	t117 = cos(pkin(13));
	t152 = sin(qJ(1));
	t134 = t152 * t117;
	t114 = sin(pkin(13));
	t126 = cos(qJ(1));
	t139 = t126 * t114;
	t111 = t119 * t139 + t134;
	t122 = sin(qJ(3));
	t125 = cos(qJ(3));
	t135 = t152 * t114;
	t138 = t126 * t117;
	t110 = -t119 * t138 + t135;
	t115 = sin(pkin(7));
	t118 = cos(pkin(7));
	t116 = sin(pkin(6));
	t141 = t116 * t126;
	t131 = t110 * t118 + t115 * t141;
	t100 = -t111 * t125 + t122 * t131;
	t107 = -t110 * t115 + t118 * t141;
	t121 = sin(qJ(4));
	t124 = cos(qJ(4));
	t154 = t100 * t121 - t107 * t124;
	t90 = t100 * t124 + t107 * t121;
	t130 = t119 * t134 + t139;
	t136 = t116 * t152;
	t153 = -t115 * t136 + t130 * t118;
	t140 = t117 * t118;
	t142 = t115 * t119;
	t106 = t122 * t142 + (t114 * t125 + t122 * t140) * t116;
	t109 = -t116 * t117 * t115 + t119 * t118;
	t95 = t106 * t121 - t109 * t124;
	t86 = atan2(t154, t95);
	t83 = sin(t86);
	t84 = cos(t86);
	t77 = t154 * t83 + t84 * t95;
	t76 = 0.1e1 / t77 ^ 2;
	t112 = -t119 * t135 + t138;
	t102 = t112 * t125 - t153 * t122;
	t127 = t115 * t130 + t118 * t136;
	t91 = t102 * t121 - t124 * t127;
	t151 = t76 * t91;
	t101 = t112 * t122 + t153 * t125;
	t120 = sin(qJ(5));
	t123 = cos(qJ(5));
	t92 = t102 * t124 + t121 * t127;
	t82 = t101 * t120 + t92 * t123;
	t80 = 0.1e1 / t82 ^ 2;
	t81 = -t101 * t123 + t92 * t120;
	t150 = t80 * t81;
	t149 = t84 * t154;
	t94 = 0.1e1 / t95 ^ 2;
	t148 = t154 * t94;
	t147 = t91 ^ 2 * t76;
	t146 = t101 * t124;
	t137 = t81 ^ 2 * t80 + 0.1e1;
	t132 = -t83 * t95 + t149;
	t128 = -t111 * t122 - t125 * t131;
	t105 = t125 * t142 + (-t114 * t122 + t125 * t140) * t116;
	t96 = t106 * t124 + t109 * t121;
	t93 = 0.1e1 / t95;
	t85 = 0.1e1 / (t154 ^ 2 * t94 + 0.1e1);
	t79 = 0.1e1 / t82;
	t78 = 0.1e1 / t137;
	t75 = 0.1e1 / t77;
	t74 = 0.1e1 / (0.1e1 + t147);
	t73 = (-t105 * t148 - t128 * t93) * t85 * t121;
	t72 = (-t148 * t96 + t90 * t93) * t85;
	t1 = [-t91 * t93 * t85, 0, t73, t72, 0, 0; (t154 * t75 - (-t83 + (-t149 * t93 + t83) * t85) * t147) * t74, 0, (-t101 * t121 * t75 - (t132 * t73 + (t105 * t84 - t128 * t83) * t121) * t151) * t74, (t92 * t75 - (t132 * t72 + t83 * t90 + t84 * t96) * t151) * t74, 0, 0; ((t90 * t120 - t123 * t128) * t79 - (t120 * t128 + t90 * t123) * t150) * t78, 0, ((-t102 * t123 - t120 * t146) * t79 - (t102 * t120 - t123 * t146) * t150) * t78, (-t120 * t79 + t123 * t150) * t91 * t78, t137 * t78, 0;];
	Ja_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:13:37
	% EndTime: 2019-10-10 09:13:38
	% DurationCPUTime: 0.62s
	% Computational Cost: add. (1607->50), mult. (4365->118), div. (90->9), fcn. (5989->17), ass. (0->71)
	t134 = cos(pkin(6));
	t132 = cos(pkin(13));
	t165 = sin(qJ(1));
	t147 = t165 * t132;
	t129 = sin(pkin(13));
	t139 = cos(qJ(1));
	t152 = t139 * t129;
	t123 = t134 * t152 + t147;
	t136 = sin(qJ(3));
	t138 = cos(qJ(3));
	t148 = t165 * t129;
	t151 = t139 * t132;
	t122 = -t134 * t151 + t148;
	t130 = sin(pkin(7));
	t133 = cos(pkin(7));
	t131 = sin(pkin(6));
	t154 = t131 * t139;
	t144 = t122 * t133 + t130 * t154;
	t112 = -t123 * t138 + t144 * t136;
	t119 = -t122 * t130 + t133 * t154;
	t135 = sin(qJ(4));
	t137 = cos(qJ(4));
	t167 = t112 * t135 - t119 * t137;
	t102 = t112 * t137 + t119 * t135;
	t143 = t134 * t147 + t152;
	t149 = t131 * t165;
	t166 = -t130 * t149 + t143 * t133;
	t124 = -t134 * t148 + t151;
	t114 = t124 * t138 - t166 * t136;
	t140 = t143 * t130 + t133 * t149;
	t104 = t114 * t137 + t140 * t135;
	t113 = t124 * t136 + t166 * t138;
	t128 = qJ(5) + qJ(6);
	t126 = sin(t128);
	t127 = cos(t128);
	t94 = t104 * t127 + t113 * t126;
	t92 = 0.1e1 / t94 ^ 2;
	t93 = t104 * t126 - t113 * t127;
	t164 = t92 * t93;
	t153 = t132 * t133;
	t155 = t130 * t134;
	t118 = t136 * t155 + (t129 * t138 + t136 * t153) * t131;
	t121 = -t131 * t132 * t130 + t134 * t133;
	t107 = t118 * t135 - t121 * t137;
	t98 = atan2(t167, t107);
	t96 = cos(t98);
	t163 = t96 * t167;
	t103 = t114 * t135 - t140 * t137;
	t95 = sin(t98);
	t89 = t96 * t107 + t167 * t95;
	t88 = 0.1e1 / t89 ^ 2;
	t162 = t103 * t88;
	t161 = t103 ^ 2 * t88;
	t106 = 0.1e1 / t107 ^ 2;
	t160 = t106 * t167;
	t159 = t113 * t137;
	t150 = t93 ^ 2 * t92 + 0.1e1;
	t145 = -t107 * t95 + t163;
	t141 = -t123 * t136 - t144 * t138;
	t117 = t138 * t155 + (-t129 * t136 + t138 * t153) * t131;
	t108 = t118 * t137 + t121 * t135;
	t105 = 0.1e1 / t107;
	t97 = 0.1e1 / (t106 * t167 ^ 2 + 0.1e1);
	t91 = 0.1e1 / t94;
	t90 = 0.1e1 / t150;
	t87 = 0.1e1 / t89;
	t86 = 0.1e1 / (0.1e1 + t161);
	t85 = (-t105 * t141 - t117 * t160) * t97 * t135;
	t84 = (t102 * t105 - t108 * t160) * t97;
	t83 = t150 * t90;
	t1 = [-t103 * t105 * t97, 0, t85, t84, 0, 0; (t167 * t87 - (-t95 + (-t105 * t163 + t95) * t97) * t161) * t86, 0, (-t113 * t135 * t87 - (t145 * t85 + (t117 * t96 - t141 * t95) * t135) * t162) * t86, (t104 * t87 - (t102 * t95 + t96 * t108 + t145 * t84) * t162) * t86, 0, 0; ((t102 * t126 - t127 * t141) * t91 - (t102 * t127 + t126 * t141) * t164) * t90, 0, ((-t114 * t127 - t126 * t159) * t91 - (t114 * t126 - t127 * t159) * t164) * t90, (-t126 * t91 + t127 * t164) * t90 * t103, t83, t83;];
	Ja_rot = t1;
else
	Ja_rot=NaN(3,6);
end