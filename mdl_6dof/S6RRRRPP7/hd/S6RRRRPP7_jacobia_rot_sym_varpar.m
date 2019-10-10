% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6RRRRPP7
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
%   Wie in S6RRRRPP7_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,theta5]';
% 
% Output:
% Ja_rot [3x6]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 12:29
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S6RRRRPP7_jacobia_rot_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP7_jacobia_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRRPP7_jacobia_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRPP7_jacobia_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:29:20
	% EndTime: 2019-10-10 12:29:20
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:29:20
	% EndTime: 2019-10-10 12:29:20
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (3->0), mult. (6->0), div. (5->0), fcn. (6->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 1, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:29:20
	% EndTime: 2019-10-10 12:29:20
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (35->13), mult. (116->34), div. (25->9), fcn. (175->9), ass. (0->25)
	t30 = cos(pkin(6));
	t29 = sin(pkin(6));
	t34 = cos(qJ(1));
	t38 = t34 * t29;
	t26 = atan2(t38, t30);
	t23 = sin(t26);
	t24 = cos(t26);
	t18 = t23 * t38 + t24 * t30;
	t32 = sin(qJ(1));
	t42 = 0.1e1 / t18 ^ 2 * t32 ^ 2;
	t27 = t29 ^ 2;
	t25 = 0.1e1 / (0.1e1 + t34 ^ 2 * t27 / t30 ^ 2);
	t41 = t25 / t30;
	t31 = sin(qJ(2));
	t40 = t32 * t31;
	t33 = cos(qJ(2));
	t39 = t32 * t33;
	t37 = t34 * t31;
	t36 = t34 * t33;
	t22 = -t30 * t40 + t36;
	t20 = 0.1e1 / t22 ^ 2;
	t21 = t30 * t39 + t37;
	t35 = t21 ^ 2 * t20 + 0.1e1;
	t19 = 0.1e1 / t35;
	t1 = [-t32 * t29 * t41, 0, 0, 0, 0, 0; (0.1e1 / t18 * t38 - (-t24 * t27 * t34 * t41 + (t25 - 0.1e1) * t29 * t23) * t29 * t42) / (t27 * t42 + 0.1e1), 0, 0, 0, 0, 0; ((t30 * t36 - t40) / t22 - (-t30 * t37 - t39) * t21 * t20) * t19, t35 * t19, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:29:20
	% EndTime: 2019-10-10 12:29:20
	% DurationCPUTime: 0.17s
	% Computational Cost: add. (173->24), mult. (451->64), div. (72->11), fcn. (673->11), ass. (0->40)
	t53 = sin(qJ(2));
	t56 = cos(qJ(2));
	t57 = cos(qJ(1));
	t54 = sin(qJ(1));
	t61 = cos(pkin(6));
	t59 = t54 * t61;
	t46 = -t53 * t59 + t57 * t56;
	t52 = sin(qJ(3));
	t55 = cos(qJ(3));
	t51 = sin(pkin(6));
	t64 = t51 * t54;
	t37 = t46 * t55 + t52 * t64;
	t35 = 0.1e1 / t37 ^ 2;
	t36 = t46 * t52 - t55 * t64;
	t68 = t35 * t36;
	t58 = t57 * t61;
	t42 = t54 * t53 - t56 * t58;
	t63 = t51 * t56;
	t40 = atan2(-t42, -t63);
	t39 = cos(t40);
	t67 = t39 * t42;
	t38 = sin(t40);
	t32 = -t38 * t42 - t39 * t63;
	t31 = 0.1e1 / t32 ^ 2;
	t45 = t57 * t53 + t56 * t59;
	t66 = t45 ^ 2 * t31;
	t48 = 0.1e1 / t51;
	t49 = 0.1e1 / t56;
	t65 = t48 * t49;
	t62 = t51 * t57;
	t60 = t36 ^ 2 * t35 + 0.1e1;
	t50 = 0.1e1 / t56 ^ 2;
	t44 = t53 * t58 + t54 * t56;
	t41 = 0.1e1 / (0.1e1 + t42 ^ 2 / t51 ^ 2 * t50);
	t34 = 0.1e1 / t37;
	t33 = 0.1e1 / t60;
	t30 = 0.1e1 / t32;
	t29 = 0.1e1 / (0.1e1 + t66);
	t28 = (t42 * t50 * t53 + t44 * t49) * t48 * t41;
	t1 = [t45 * t41 * t65, t28, 0, 0, 0, 0; (-t42 * t30 - (-t38 + (-t65 * t67 + t38) * t41) * t66) * t29, (t46 * t30 - (t39 * t51 * t53 - t38 * t44 + (t38 * t63 - t67) * t28) * t45 * t31) * t29, 0, 0, 0, 0; ((-t44 * t52 - t55 * t62) * t34 - (-t44 * t55 + t52 * t62) * t68) * t33, (-t52 * t34 + t55 * t68) * t45 * t33, t60 * t33, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:29:20
	% EndTime: 2019-10-10 12:29:20
	% DurationCPUTime: 0.30s
	% Computational Cost: add. (459->37), mult. (1300->91), div. (85->9), fcn. (1858->13), ass. (0->54)
	t76 = cos(pkin(6));
	t79 = sin(qJ(2));
	t84 = cos(qJ(1));
	t88 = t84 * t79;
	t80 = sin(qJ(1));
	t83 = cos(qJ(2));
	t89 = t80 * t83;
	t70 = t76 * t88 + t89;
	t78 = sin(qJ(3));
	t82 = cos(qJ(3));
	t75 = sin(pkin(6));
	t91 = t75 * t84;
	t59 = t70 * t78 + t82 * t91;
	t94 = t75 * t78;
	t67 = -t76 * t82 + t79 * t94;
	t58 = atan2(-t59, t67);
	t55 = sin(t58);
	t56 = cos(t58);
	t49 = -t55 * t59 + t56 * t67;
	t48 = 0.1e1 / t49 ^ 2;
	t87 = t84 * t83;
	t90 = t80 * t79;
	t72 = -t76 * t90 + t87;
	t93 = t75 * t82;
	t63 = t72 * t78 - t80 * t93;
	t100 = t48 * t63;
	t64 = t72 * t82 + t80 * t94;
	t71 = t76 * t89 + t88;
	t77 = sin(qJ(4));
	t81 = cos(qJ(4));
	t54 = t64 * t81 + t71 * t77;
	t52 = 0.1e1 / t54 ^ 2;
	t53 = t64 * t77 - t71 * t81;
	t99 = t52 * t53;
	t98 = t56 * t59;
	t66 = 0.1e1 / t67 ^ 2;
	t97 = t59 * t66;
	t96 = t63 ^ 2 * t48;
	t95 = t71 * t82;
	t92 = t75 * t83;
	t86 = t53 ^ 2 * t52 + 0.1e1;
	t61 = t70 * t82 - t78 * t91;
	t85 = -t55 * t67 - t98;
	t69 = t76 * t87 - t90;
	t68 = t76 * t78 + t79 * t93;
	t65 = 0.1e1 / t67;
	t57 = 0.1e1 / (t59 ^ 2 * t66 + 0.1e1);
	t51 = 0.1e1 / t54;
	t50 = 0.1e1 / t86;
	t47 = 0.1e1 / t49;
	t46 = 0.1e1 / (0.1e1 + t96);
	t45 = (-t65 * t69 + t92 * t97) * t78 * t57;
	t44 = (-t61 * t65 + t68 * t97) * t57;
	t1 = [-t63 * t65 * t57, t45, t44, 0, 0, 0; (-t59 * t47 - (-t55 + (t65 * t98 + t55) * t57) * t96) * t46, (-t71 * t78 * t47 - ((-t55 * t69 + t56 * t92) * t78 + t85 * t45) * t100) * t46, (t64 * t47 - (t85 * t44 - t55 * t61 + t56 * t68) * t100) * t46, 0, 0, 0; ((-t61 * t77 - t69 * t81) * t51 - (-t61 * t81 + t69 * t77) * t99) * t50, ((-t72 * t81 - t77 * t95) * t51 - (t72 * t77 - t81 * t95) * t99) * t50, (-t77 * t51 + t81 * t99) * t63 * t50, t86 * t50, 0, 0;];
	Ja_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:29:20
	% EndTime: 2019-10-10 12:29:20
	% DurationCPUTime: 0.25s
	% Computational Cost: add. (525->38), mult. (1300->91), div. (85->9), fcn. (1858->13), ass. (0->55)
	t81 = cos(pkin(6));
	t83 = sin(qJ(2));
	t87 = cos(qJ(1));
	t91 = t87 * t83;
	t84 = sin(qJ(1));
	t86 = cos(qJ(2));
	t92 = t84 * t86;
	t72 = t81 * t91 + t92;
	t82 = sin(qJ(3));
	t85 = cos(qJ(3));
	t80 = sin(pkin(6));
	t94 = t80 * t87;
	t61 = t72 * t82 + t85 * t94;
	t97 = t80 * t82;
	t69 = -t81 * t85 + t83 * t97;
	t60 = atan2(-t61, t69);
	t57 = sin(t60);
	t58 = cos(t60);
	t51 = -t57 * t61 + t58 * t69;
	t50 = 0.1e1 / t51 ^ 2;
	t90 = t87 * t86;
	t93 = t84 * t83;
	t74 = -t81 * t93 + t90;
	t96 = t80 * t85;
	t65 = t74 * t82 - t84 * t96;
	t103 = t50 * t65;
	t66 = t74 * t85 + t84 * t97;
	t73 = t81 * t92 + t91;
	t79 = qJ(4) + pkin(11);
	t77 = sin(t79);
	t78 = cos(t79);
	t56 = t66 * t78 + t73 * t77;
	t54 = 0.1e1 / t56 ^ 2;
	t55 = t66 * t77 - t73 * t78;
	t102 = t54 * t55;
	t101 = t58 * t61;
	t68 = 0.1e1 / t69 ^ 2;
	t100 = t61 * t68;
	t99 = t65 ^ 2 * t50;
	t98 = t73 * t85;
	t95 = t80 * t86;
	t89 = t55 ^ 2 * t54 + 0.1e1;
	t63 = t72 * t85 - t82 * t94;
	t88 = -t57 * t69 - t101;
	t71 = t81 * t90 - t93;
	t70 = t81 * t82 + t83 * t96;
	t67 = 0.1e1 / t69;
	t59 = 0.1e1 / (t61 ^ 2 * t68 + 0.1e1);
	t53 = 0.1e1 / t56;
	t52 = 0.1e1 / t89;
	t49 = 0.1e1 / t51;
	t48 = 0.1e1 / (0.1e1 + t99);
	t47 = (t95 * t100 - t67 * t71) * t82 * t59;
	t46 = (t70 * t100 - t63 * t67) * t59;
	t1 = [-t65 * t67 * t59, t47, t46, 0, 0, 0; (-t61 * t49 - (-t57 + (t67 * t101 + t57) * t59) * t99) * t48, (-t73 * t82 * t49 - ((-t57 * t71 + t58 * t95) * t82 + t88 * t47) * t103) * t48, (t66 * t49 - (t88 * t46 - t57 * t63 + t58 * t70) * t103) * t48, 0, 0, 0; ((-t63 * t77 - t71 * t78) * t53 - (-t63 * t78 + t71 * t77) * t102) * t52, ((-t74 * t78 - t77 * t98) * t53 - (t74 * t77 - t78 * t98) * t102) * t52, (t78 * t102 - t77 * t53) * t65 * t52, t89 * t52, 0, 0;];
	Ja_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:29:20
	% EndTime: 2019-10-10 12:29:21
	% DurationCPUTime: 0.49s
	% Computational Cost: add. (1427->45), mult. (2519->109), div. (107->9), fcn. (3557->13), ass. (0->64)
	t109 = qJ(4) + pkin(11);
	t107 = sin(t109);
	t108 = cos(t109);
	t111 = cos(pkin(6));
	t116 = cos(qJ(2));
	t117 = cos(qJ(1));
	t122 = t117 * t116;
	t113 = sin(qJ(2));
	t114 = sin(qJ(1));
	t125 = t114 * t113;
	t121 = -t111 * t122 + t125;
	t123 = t117 * t113;
	t124 = t114 * t116;
	t103 = t111 * t123 + t124;
	t112 = sin(qJ(3));
	t115 = cos(qJ(3));
	t110 = sin(pkin(6));
	t126 = t110 * t117;
	t95 = -t103 * t115 + t112 * t126;
	t140 = t95 * t107 + t121 * t108;
	t119 = t121 * t107;
	t139 = t95 * t108 - t119;
	t128 = t110 * t115;
	t102 = t111 * t112 + t113 * t128;
	t127 = t110 * t116;
	t90 = t102 * t107 + t108 * t127;
	t78 = atan2(t140, t90);
	t75 = sin(t78);
	t76 = cos(t78);
	t74 = t140 * t75 + t76 * t90;
	t73 = 0.1e1 / t74 ^ 2;
	t104 = t111 * t124 + t123;
	t131 = t104 * t108;
	t105 = -t111 * t125 + t122;
	t129 = t110 * t112;
	t97 = t105 * t115 + t114 * t129;
	t85 = t97 * t107 - t131;
	t137 = t73 * t85;
	t136 = t76 * t140;
	t86 = t104 * t107 + t97 * t108;
	t81 = 0.1e1 / t86 ^ 2;
	t96 = -t105 * t112 + t114 * t128;
	t135 = t81 * t96;
	t89 = 0.1e1 / t90 ^ 2;
	t134 = t140 * t89;
	t133 = t85 ^ 2 * t73;
	t132 = t96 ^ 2 * t81;
	t130 = t107 * t115;
	t120 = -t75 * t90 + t136;
	t118 = t103 * t112 + t115 * t126;
	t101 = t111 * t115 - t113 * t129;
	t98 = (-t108 * t113 + t116 * t130) * t110;
	t91 = t102 * t108 - t107 * t127;
	t88 = 0.1e1 / t90;
	t87 = -t103 * t108 - t115 * t119;
	t80 = 0.1e1 / t86;
	t79 = 0.1e1 / (0.1e1 + t132);
	t77 = 0.1e1 / (t140 ^ 2 * t89 + 0.1e1);
	t72 = 0.1e1 / t74;
	t71 = 0.1e1 / (0.1e1 + t133);
	t70 = (-t101 * t134 + t118 * t88) * t77 * t107;
	t69 = (-t98 * t134 - t87 * t88) * t77;
	t68 = (-t91 * t134 + t139 * t88) * t77;
	t1 = [-t85 * t88 * t77, t69, t70, t68, 0, 0; (t140 * t72 - (-t75 + (-t88 * t136 + t75) * t77) * t133) * t71, ((-t104 * t130 - t105 * t108) * t72 - (t120 * t69 - t75 * t87 + t76 * t98) * t137) * t71, (t96 * t107 * t72 - (t120 * t70 + (t101 * t76 + t118 * t75) * t107) * t137) * t71, (t86 * t72 - (t120 * t68 + t139 * t75 + t76 * t91) * t137) * t71, 0, 0; (t118 * t80 - t139 * t135) * t79, (t104 * t112 * t80 - (t105 * t107 - t115 * t131) * t135) * t79, (-t108 * t132 - t80 * t97) * t79, t85 * t79 * t135, 0, 0;];
	Ja_rot = t1;
else
	Ja_rot=NaN(3,6);
end