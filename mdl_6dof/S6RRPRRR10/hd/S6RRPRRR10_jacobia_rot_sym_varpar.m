% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6RRPRRR10
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
%   Wie in S6RRPRRR10_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,d6,theta3]';
% 
% Output:
% Ja_rot [3x6]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 11:05
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S6RRPRRR10_jacobia_rot_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR10_jacobia_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPRRR10_jacobia_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRPRRR10_jacobia_rot_sym_varpar: pkin has to be [12x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:05:08
	% EndTime: 2019-10-10 11:05:08
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:05:08
	% EndTime: 2019-10-10 11:05:08
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (3->0), mult. (6->0), div. (5->0), fcn. (6->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 1, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:05:08
	% EndTime: 2019-10-10 11:05:08
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
	% StartTime: 2019-10-10 11:05:08
	% EndTime: 2019-10-10 11:05:08
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (156->24), mult. (403->63), div. (67->11), fcn. (610->11), ass. (0->39)
	t46 = sin(qJ(2));
	t48 = cos(qJ(2));
	t49 = cos(qJ(1));
	t47 = sin(qJ(1));
	t52 = cos(pkin(6));
	t51 = t47 * t52;
	t38 = -t46 * t51 + t49 * t48;
	t43 = sin(pkin(12));
	t45 = cos(pkin(12));
	t44 = sin(pkin(6));
	t55 = t44 * t47;
	t29 = t38 * t45 + t43 * t55;
	t27 = 0.1e1 / t29 ^ 2;
	t28 = t38 * t43 - t45 * t55;
	t59 = t27 * t28;
	t50 = t49 * t52;
	t34 = t47 * t46 - t48 * t50;
	t54 = t44 * t48;
	t32 = atan2(-t34, -t54);
	t31 = cos(t32);
	t58 = t31 * t34;
	t30 = sin(t32);
	t24 = -t30 * t34 - t31 * t54;
	t23 = 0.1e1 / t24 ^ 2;
	t37 = t49 * t46 + t48 * t51;
	t57 = t37 ^ 2 * t23;
	t40 = 0.1e1 / t44;
	t41 = 0.1e1 / t48;
	t56 = t40 * t41;
	t53 = t44 * t49;
	t42 = 0.1e1 / t48 ^ 2;
	t36 = t46 * t50 + t47 * t48;
	t33 = 0.1e1 / (0.1e1 + t34 ^ 2 / t44 ^ 2 * t42);
	t26 = 0.1e1 / t29;
	t25 = 0.1e1 / (t28 ^ 2 * t27 + 0.1e1);
	t22 = 0.1e1 / t24;
	t21 = 0.1e1 / (0.1e1 + t57);
	t20 = (t34 * t42 * t46 + t36 * t41) * t40 * t33;
	t1 = [t37 * t33 * t56, t20, 0, 0, 0, 0; (-t34 * t22 - (-t30 + (-t56 * t58 + t30) * t33) * t57) * t21, (t38 * t22 - (t31 * t44 * t46 - t30 * t36 + (t30 * t54 - t58) * t20) * t37 * t23) * t21, 0, 0, 0, 0; ((-t36 * t43 - t45 * t53) * t26 - (-t36 * t45 + t43 * t53) * t59) * t25, (-t43 * t26 + t45 * t59) * t37 * t25, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:05:08
	% EndTime: 2019-10-10 11:05:08
	% DurationCPUTime: 0.13s
	% Computational Cost: add. (221->25), mult. (451->64), div. (72->11), fcn. (673->11), ass. (0->41)
	t58 = sin(qJ(2));
	t60 = cos(qJ(2));
	t61 = cos(qJ(1));
	t59 = sin(qJ(1));
	t65 = cos(pkin(6));
	t63 = t59 * t65;
	t49 = -t58 * t63 + t61 * t60;
	t54 = pkin(12) + qJ(4);
	t51 = sin(t54);
	t52 = cos(t54);
	t57 = sin(pkin(6));
	t68 = t57 * t59;
	t40 = t49 * t52 + t51 * t68;
	t38 = 0.1e1 / t40 ^ 2;
	t39 = t49 * t51 - t52 * t68;
	t72 = t38 * t39;
	t62 = t61 * t65;
	t45 = t59 * t58 - t60 * t62;
	t67 = t57 * t60;
	t43 = atan2(-t45, -t67);
	t42 = cos(t43);
	t71 = t42 * t45;
	t41 = sin(t43);
	t35 = -t41 * t45 - t42 * t67;
	t34 = 0.1e1 / t35 ^ 2;
	t48 = t61 * t58 + t60 * t63;
	t70 = t48 ^ 2 * t34;
	t53 = 0.1e1 / t57;
	t55 = 0.1e1 / t60;
	t69 = t53 * t55;
	t66 = t57 * t61;
	t64 = t39 ^ 2 * t38 + 0.1e1;
	t56 = 0.1e1 / t60 ^ 2;
	t47 = t58 * t62 + t59 * t60;
	t44 = 0.1e1 / (0.1e1 + t45 ^ 2 / t57 ^ 2 * t56);
	t37 = 0.1e1 / t40;
	t36 = 0.1e1 / t64;
	t33 = 0.1e1 / t35;
	t32 = 0.1e1 / (0.1e1 + t70);
	t31 = (t45 * t56 * t58 + t47 * t55) * t53 * t44;
	t1 = [t48 * t44 * t69, t31, 0, 0, 0, 0; (-t45 * t33 - (-t41 + (-t69 * t71 + t41) * t44) * t70) * t32, (t49 * t33 - (t42 * t57 * t58 - t41 * t47 + (t41 * t67 - t71) * t31) * t48 * t34) * t32, 0, 0, 0, 0; ((-t47 * t51 - t52 * t66) * t37 - (-t47 * t52 + t51 * t66) * t72) * t36, (-t51 * t37 + t52 * t72) * t48 * t36, 0, t64 * t36, 0, 0;];
	Ja_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:05:08
	% EndTime: 2019-10-10 11:05:08
	% DurationCPUTime: 0.26s
	% Computational Cost: add. (878->38), mult. (1300->90), div. (85->9), fcn. (1858->13), ass. (0->56)
	t84 = cos(pkin(6));
	t86 = sin(qJ(2));
	t90 = cos(qJ(1));
	t94 = t90 * t86;
	t87 = sin(qJ(1));
	t89 = cos(qJ(2));
	t95 = t87 * t89;
	t75 = t84 * t94 + t95;
	t82 = pkin(12) + qJ(4);
	t80 = sin(t82);
	t81 = cos(t82);
	t83 = sin(pkin(6));
	t97 = t83 * t90;
	t64 = t75 * t80 + t81 * t97;
	t100 = t83 * t86;
	t72 = t80 * t100 - t84 * t81;
	t63 = atan2(-t64, t72);
	t56 = sin(t63);
	t57 = cos(t63);
	t54 = -t56 * t64 + t57 * t72;
	t53 = 0.1e1 / t54 ^ 2;
	t93 = t90 * t89;
	t96 = t87 * t86;
	t77 = -t84 * t96 + t93;
	t99 = t83 * t87;
	t68 = t77 * t80 - t81 * t99;
	t107 = t53 * t68;
	t106 = t57 * t64;
	t76 = t84 * t95 + t94;
	t85 = sin(qJ(5));
	t102 = t76 * t85;
	t69 = t77 * t81 + t80 * t99;
	t88 = cos(qJ(5));
	t62 = t69 * t88 + t102;
	t59 = 0.1e1 / t62 ^ 2;
	t101 = t76 * t88;
	t61 = t69 * t85 - t101;
	t105 = t59 * t61;
	t71 = 0.1e1 / t72 ^ 2;
	t104 = t64 * t71;
	t103 = t68 ^ 2 * t53;
	t98 = t83 * t89;
	t92 = t61 ^ 2 * t59 + 0.1e1;
	t66 = t75 * t81 - t80 * t97;
	t91 = -t56 * t72 - t106;
	t74 = t84 * t93 - t96;
	t73 = t81 * t100 + t84 * t80;
	t70 = 0.1e1 / t72;
	t60 = 0.1e1 / (t64 ^ 2 * t71 + 0.1e1);
	t58 = 0.1e1 / t62;
	t55 = 0.1e1 / t92;
	t52 = 0.1e1 / t54;
	t51 = 0.1e1 / (0.1e1 + t103);
	t50 = (t98 * t104 - t70 * t74) * t80 * t60;
	t49 = (t73 * t104 - t66 * t70) * t60;
	t1 = [-t68 * t70 * t60, t50, 0, t49, 0, 0; (-t64 * t52 - (-t56 + (t70 * t106 + t56) * t60) * t103) * t51, (-t76 * t80 * t52 - ((-t56 * t74 + t57 * t98) * t80 + t91 * t50) * t107) * t51, 0, (t69 * t52 - (t91 * t49 - t56 * t66 + t57 * t73) * t107) * t51, 0, 0; ((-t66 * t85 - t74 * t88) * t58 - (-t66 * t88 + t74 * t85) * t105) * t55, ((-t81 * t102 - t77 * t88) * t58 - (-t81 * t101 + t77 * t85) * t105) * t55, 0, (t88 * t105 - t85 * t58) * t68 * t55, t92 * t55, 0;];
	Ja_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:05:08
	% EndTime: 2019-10-10 11:05:08
	% DurationCPUTime: 0.33s
	% Computational Cost: add. (1003->39), mult. (1383->90), div. (90->9), fcn. (1970->13), ass. (0->58)
	t103 = cos(qJ(1));
	t98 = sin(pkin(6));
	t110 = t103 * t98;
	t100 = sin(qJ(2));
	t107 = t103 * t100;
	t101 = sin(qJ(1));
	t102 = cos(qJ(2));
	t108 = t101 * t102;
	t99 = cos(pkin(6));
	t87 = t107 * t99 + t108;
	t96 = pkin(12) + qJ(4);
	t92 = sin(t96);
	t93 = cos(t96);
	t76 = t110 * t93 + t87 * t92;
	t113 = t100 * t98;
	t84 = t113 * t92 - t93 * t99;
	t75 = atan2(-t76, t84);
	t72 = sin(t75);
	t73 = cos(t75);
	t66 = -t72 * t76 + t73 * t84;
	t65 = 0.1e1 / t66 ^ 2;
	t112 = t101 * t98;
	t106 = t103 * t102;
	t109 = t101 * t100;
	t89 = -t109 * t99 + t106;
	t80 = -t112 * t93 + t89 * t92;
	t120 = t65 * t80;
	t88 = t108 * t99 + t107;
	t97 = qJ(5) + qJ(6);
	t94 = sin(t97);
	t115 = t88 * t94;
	t81 = t112 * t92 + t89 * t93;
	t95 = cos(t97);
	t71 = t81 * t95 + t115;
	t69 = 0.1e1 / t71 ^ 2;
	t114 = t88 * t95;
	t70 = t81 * t94 - t114;
	t119 = t69 * t70;
	t118 = t73 * t76;
	t83 = 0.1e1 / t84 ^ 2;
	t117 = t76 * t83;
	t116 = t80 ^ 2 * t65;
	t111 = t102 * t98;
	t105 = t69 * t70 ^ 2 + 0.1e1;
	t78 = -t92 * t110 + t87 * t93;
	t104 = -t72 * t84 - t118;
	t86 = t106 * t99 - t109;
	t85 = t113 * t93 + t92 * t99;
	t82 = 0.1e1 / t84;
	t74 = 0.1e1 / (t76 ^ 2 * t83 + 0.1e1);
	t68 = 0.1e1 / t71;
	t67 = 0.1e1 / t105;
	t64 = 0.1e1 / t66;
	t63 = 0.1e1 / (0.1e1 + t116);
	t62 = (t111 * t117 - t82 * t86) * t92 * t74;
	t61 = (t117 * t85 - t78 * t82) * t74;
	t60 = t105 * t67;
	t1 = [-t80 * t82 * t74, t62, 0, t61, 0, 0; (-t76 * t64 - (-t72 + (t118 * t82 + t72) * t74) * t116) * t63, (-t88 * t92 * t64 - ((t111 * t73 - t72 * t86) * t92 + t104 * t62) * t120) * t63, 0, (t81 * t64 - (t104 * t61 - t72 * t78 + t73 * t85) * t120) * t63, 0, 0; ((-t78 * t94 - t86 * t95) * t68 - (-t78 * t95 + t86 * t94) * t119) * t67, ((-t115 * t93 - t89 * t95) * t68 - (-t114 * t93 + t89 * t94) * t119) * t67, 0, (t119 * t95 - t68 * t94) * t80 * t67, t60, t60;];
	Ja_rot = t1;
else
	Ja_rot=NaN(3,6);
end