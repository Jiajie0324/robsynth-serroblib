% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6RRRRRP9
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
%   Wie in S6RRRRRP9_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d5]';
% 
% Output:
% Ja_rot [3x6]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 13:09
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S6RRRRRP9_jacobia_rot_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP9_jacobia_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRRRP9_jacobia_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRRP9_jacobia_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:09:38
	% EndTime: 2019-10-10 13:09:38
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:09:38
	% EndTime: 2019-10-10 13:09:38
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (3->0), mult. (6->0), div. (5->0), fcn. (6->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 1, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:09:38
	% EndTime: 2019-10-10 13:09:38
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
	% StartTime: 2019-10-10 13:09:38
	% EndTime: 2019-10-10 13:09:38
	% DurationCPUTime: 0.24s
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
	% StartTime: 2019-10-10 13:09:38
	% EndTime: 2019-10-10 13:09:39
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
	% StartTime: 2019-10-10 13:09:38
	% EndTime: 2019-10-10 13:09:39
	% DurationCPUTime: 0.33s
	% Computational Cost: add. (570->38), mult. (1383->91), div. (90->9), fcn. (1970->13), ass. (0->56)
	t90 = sin(pkin(6));
	t97 = cos(qJ(1));
	t104 = t90 * t97;
	t93 = sin(qJ(2));
	t101 = t97 * t93;
	t94 = sin(qJ(1));
	t96 = cos(qJ(2));
	t102 = t94 * t96;
	t91 = cos(pkin(6));
	t82 = t91 * t101 + t102;
	t92 = sin(qJ(3));
	t95 = cos(qJ(3));
	t71 = t95 * t104 + t82 * t92;
	t107 = t90 * t92;
	t79 = t93 * t107 - t91 * t95;
	t70 = atan2(-t71, t79);
	t67 = sin(t70);
	t68 = cos(t70);
	t61 = -t67 * t71 + t68 * t79;
	t60 = 0.1e1 / t61 ^ 2;
	t106 = t90 * t95;
	t100 = t97 * t96;
	t103 = t94 * t93;
	t84 = -t91 * t103 + t100;
	t75 = -t94 * t106 + t84 * t92;
	t113 = t60 * t75;
	t76 = t94 * t107 + t84 * t95;
	t83 = t91 * t102 + t101;
	t89 = qJ(4) + qJ(5);
	t87 = sin(t89);
	t88 = cos(t89);
	t66 = t76 * t88 + t83 * t87;
	t64 = 0.1e1 / t66 ^ 2;
	t65 = t76 * t87 - t83 * t88;
	t112 = t64 * t65;
	t111 = t68 * t71;
	t78 = 0.1e1 / t79 ^ 2;
	t110 = t71 * t78;
	t109 = t75 ^ 2 * t60;
	t108 = t83 * t95;
	t105 = t90 * t96;
	t99 = t65 ^ 2 * t64 + 0.1e1;
	t73 = -t92 * t104 + t82 * t95;
	t98 = -t67 * t79 - t111;
	t81 = t91 * t100 - t103;
	t80 = t93 * t106 + t91 * t92;
	t77 = 0.1e1 / t79;
	t69 = 0.1e1 / (t71 ^ 2 * t78 + 0.1e1);
	t63 = 0.1e1 / t66;
	t62 = 0.1e1 / t99;
	t59 = 0.1e1 / t61;
	t58 = 0.1e1 / (0.1e1 + t109);
	t57 = (t105 * t110 - t77 * t81) * t92 * t69;
	t56 = (t80 * t110 - t73 * t77) * t69;
	t55 = t99 * t62;
	t1 = [-t75 * t77 * t69, t57, t56, 0, 0, 0; (-t71 * t59 - (-t67 + (t77 * t111 + t67) * t69) * t109) * t58, (-t83 * t92 * t59 - ((t68 * t105 - t67 * t81) * t92 + t98 * t57) * t113) * t58, (t76 * t59 - (t98 * t56 - t67 * t73 + t68 * t80) * t113) * t58, 0, 0, 0; ((-t73 * t87 - t81 * t88) * t63 - (-t73 * t88 + t81 * t87) * t112) * t62, ((-t87 * t108 - t84 * t88) * t63 - (-t88 * t108 + t84 * t87) * t112) * t62, (t88 * t112 - t87 * t63) * t75 * t62, t55, t55, 0;];
	Ja_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:09:38
	% EndTime: 2019-10-10 13:09:39
	% DurationCPUTime: 0.31s
	% Computational Cost: add. (570->38), mult. (1383->91), div. (90->9), fcn. (1970->13), ass. (0->56)
	t101 = cos(qJ(1));
	t94 = sin(pkin(6));
	t107 = t101 * t94;
	t100 = cos(qJ(2));
	t98 = sin(qJ(1));
	t105 = t98 * t100;
	t97 = sin(qJ(2));
	t106 = t101 * t97;
	t95 = cos(pkin(6));
	t86 = t95 * t106 + t105;
	t96 = sin(qJ(3));
	t99 = cos(qJ(3));
	t75 = t99 * t107 + t86 * t96;
	t111 = t94 * t96;
	t83 = t97 * t111 - t95 * t99;
	t74 = atan2(-t75, t83);
	t71 = sin(t74);
	t72 = cos(t74);
	t65 = -t71 * t75 + t72 * t83;
	t64 = 0.1e1 / t65 ^ 2;
	t110 = t94 * t99;
	t104 = t101 * t100;
	t109 = t98 * t97;
	t88 = -t95 * t109 + t104;
	t79 = -t98 * t110 + t88 * t96;
	t117 = t64 * t79;
	t80 = t98 * t111 + t88 * t99;
	t87 = t95 * t105 + t106;
	t93 = qJ(4) + qJ(5);
	t91 = sin(t93);
	t92 = cos(t93);
	t70 = t80 * t92 + t87 * t91;
	t68 = 0.1e1 / t70 ^ 2;
	t69 = t80 * t91 - t87 * t92;
	t116 = t68 * t69;
	t115 = t72 * t75;
	t82 = 0.1e1 / t83 ^ 2;
	t114 = t75 * t82;
	t113 = t79 ^ 2 * t64;
	t112 = t87 * t99;
	t108 = t100 * t94;
	t103 = t69 ^ 2 * t68 + 0.1e1;
	t77 = -t96 * t107 + t86 * t99;
	t102 = -t71 * t83 - t115;
	t85 = t95 * t104 - t109;
	t84 = t97 * t110 + t95 * t96;
	t81 = 0.1e1 / t83;
	t73 = 0.1e1 / (t75 ^ 2 * t82 + 0.1e1);
	t67 = 0.1e1 / t70;
	t66 = 0.1e1 / t103;
	t63 = 0.1e1 / t65;
	t62 = 0.1e1 / (0.1e1 + t113);
	t61 = (t108 * t114 - t81 * t85) * t96 * t73;
	t60 = (t84 * t114 - t77 * t81) * t73;
	t59 = t103 * t66;
	t1 = [-t79 * t81 * t73, t61, t60, 0, 0, 0; (-t75 * t63 - (-t71 + (t81 * t115 + t71) * t73) * t113) * t62, (-t87 * t96 * t63 - ((t72 * t108 - t71 * t85) * t96 + t102 * t61) * t117) * t62, (t80 * t63 - (t102 * t60 - t71 * t77 + t72 * t84) * t117) * t62, 0, 0, 0; ((-t77 * t91 - t85 * t92) * t67 - (-t77 * t92 + t85 * t91) * t116) * t66, ((-t91 * t112 - t88 * t92) * t67 - (-t92 * t112 + t88 * t91) * t116) * t66, (t92 * t116 - t91 * t67) * t79 * t66, t59, t59, 0;];
	Ja_rot = t1;
else
	Ja_rot=NaN(3,6);
end