% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6RRRRPR5
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
%   Wie in S6RRRRPR5_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d6]';
% 
% Output:
% Ja_rot [3x6]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 12:38
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S6RRRRPR5_jacobia_rot_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR5_jacobia_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRRPR5_jacobia_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRPR5_jacobia_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:38:37
	% EndTime: 2019-10-10 12:38:37
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:38:37
	% EndTime: 2019-10-10 12:38:37
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (3->0), mult. (6->0), div. (5->0), fcn. (6->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 1, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:38:37
	% EndTime: 2019-10-10 12:38:37
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:38:37
	% EndTime: 2019-10-10 12:38:37
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:38:37
	% EndTime: 2019-10-10 12:38:37
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (358->21), mult. (332->54), div. (79->9), fcn. (489->9), ass. (0->38)
	t68 = qJ(2) + qJ(3);
	t67 = cos(t68);
	t66 = sin(t68);
	t70 = sin(qJ(1));
	t78 = t70 * t66;
	t61 = atan2(-t78, -t67);
	t59 = sin(t61);
	t60 = cos(t61);
	t52 = -t59 * t78 - t60 * t67;
	t51 = 0.1e1 / t52 ^ 2;
	t72 = cos(qJ(1));
	t84 = t51 * t72 ^ 2;
	t71 = cos(qJ(4));
	t74 = t72 * t71;
	t69 = sin(qJ(4));
	t77 = t70 * t69;
	t58 = t67 * t74 + t77;
	t56 = 0.1e1 / t58 ^ 2;
	t75 = t72 * t69;
	t76 = t70 * t71;
	t57 = t67 * t75 - t76;
	t83 = t56 * t57;
	t82 = t59 * t67;
	t63 = t66 ^ 2;
	t81 = t63 / t67 ^ 2;
	t80 = t66 * t72;
	t62 = 0.1e1 / (t70 ^ 2 * t81 + 0.1e1);
	t79 = t70 * t62;
	t73 = t57 ^ 2 * t56 + 0.1e1;
	t64 = 0.1e1 / t67;
	t55 = 0.1e1 / t58;
	t54 = 0.1e1 / t73;
	t53 = (0.1e1 + t81) * t79;
	t50 = 0.1e1 / t52;
	t49 = 0.1e1 / (t63 * t84 + 0.1e1);
	t48 = (-t55 * t69 + t71 * t83) * t54 * t80;
	t47 = (t67 * t50 - (-t70 * t82 + t60 * t66 + (-t60 * t78 + t82) * t53) * t66 * t51) * t72 * t49;
	t1 = [t64 * t62 * t80, t53, t53, 0, 0, 0; (-t50 * t78 - (-t60 * t63 * t64 * t79 + (t62 - 0.1e1) * t66 * t59) * t66 * t84) * t49, t47, t47, 0, 0, 0; ((-t67 * t77 - t74) * t55 - (-t67 * t76 + t75) * t83) * t54, t48, t48, t73 * t54, 0, 0;];
	Ja_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:38:37
	% EndTime: 2019-10-10 12:38:37
	% DurationCPUTime: 0.22s
	% Computational Cost: add. (477->27), mult. (688->69), div. (136->11), fcn. (1034->9), ass. (0->43)
	t82 = qJ(2) + qJ(3);
	t77 = sin(t82);
	t99 = t77 ^ 2;
	t78 = cos(t82);
	t85 = cos(qJ(4));
	t86 = cos(qJ(1));
	t88 = t86 * t85;
	t83 = sin(qJ(4));
	t84 = sin(qJ(1));
	t91 = t84 * t83;
	t67 = t78 * t91 + t88;
	t93 = t77 * t83;
	t64 = atan2(-t67, t93);
	t60 = sin(t64);
	t61 = cos(t64);
	t59 = -t60 * t67 + t61 * t93;
	t58 = 0.1e1 / t59 ^ 2;
	t89 = t86 * t83;
	t90 = t84 * t85;
	t70 = t78 * t89 - t90;
	t98 = t58 * t70;
	t96 = t61 * t67;
	t95 = t70 ^ 2 * t58;
	t75 = 0.1e1 / t77;
	t79 = 0.1e1 / t83;
	t94 = t75 * t79;
	t92 = t77 * t86;
	t71 = t78 * t88 + t91;
	t66 = 0.1e1 / t71 ^ 2;
	t87 = t86 ^ 2 * t99 * t66;
	t80 = 0.1e1 / t83 ^ 2;
	t76 = 0.1e1 / t99;
	t69 = t78 * t90 - t89;
	t65 = 0.1e1 / t71;
	t63 = 0.1e1 / (t67 ^ 2 * t76 * t80 + 0.1e1);
	t62 = 0.1e1 / (0.1e1 + t87);
	t57 = 0.1e1 / t59;
	t56 = (t67 * t76 * t78 * t79 + t84) * t63;
	t55 = 0.1e1 / (0.1e1 + t95);
	t54 = (t67 * t80 * t85 - t69 * t79) * t75 * t63;
	t53 = (-t65 * t78 * t86 - t85 * t87) * t62;
	t52 = (t56 * t96 * t98 + (-t57 * t92 - (t61 * t78 + (-t56 + t84) * t60 * t77) * t98) * t83) * t55;
	t1 = [-t70 * t63 * t94, t56, t56, t54, 0, 0; (-t67 * t57 - (-t60 + (t94 * t96 + t60) * t63) * t95) * t55, t52, t52, (t71 * t57 - (t61 * t77 * t85 - t60 * t69 + (-t60 * t93 - t96) * t54) * t98) * t55, 0, 0; (-t66 * t69 * t86 + t65 * t84) * t77 * t62, t53, t53, -t70 * t66 * t62 * t92, 0, 0;];
	Ja_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:38:37
	% EndTime: 2019-10-10 12:38:37
	% DurationCPUTime: 0.17s
	% Computational Cost: add. (434->26), mult. (576->67), div. (85->9), fcn. (827->11), ass. (0->45)
	t100 = cos(qJ(1));
	t96 = sin(qJ(4));
	t104 = t100 * t96;
	t97 = sin(qJ(1));
	t99 = cos(qJ(4));
	t106 = t97 * t99;
	t94 = qJ(2) + qJ(3);
	t93 = cos(t94);
	t82 = t93 * t104 - t106;
	t103 = t100 * t99;
	t107 = t97 * t96;
	t83 = t93 * t103 + t107;
	t95 = sin(qJ(6));
	t98 = cos(qJ(6));
	t79 = t82 * t95 + t83 * t98;
	t77 = 0.1e1 / t79 ^ 2;
	t78 = -t82 * t98 + t83 * t95;
	t113 = t77 * t78;
	t112 = t78 ^ 2 * t77;
	t92 = sin(t94);
	t108 = t97 * t92;
	t87 = atan2(t108, t93);
	t84 = sin(t87);
	t111 = t84 * t93;
	t89 = t92 ^ 2;
	t110 = t89 / t93 ^ 2;
	t86 = 0.1e1 / (t97 ^ 2 * t110 + 0.1e1);
	t109 = t97 * t86;
	t105 = t100 * t92;
	t85 = cos(t87);
	t74 = t84 * t108 + t85 * t93;
	t73 = 0.1e1 / t74 ^ 2;
	t102 = t73 * t100 ^ 2;
	t101 = 0.1e1 + t112;
	t90 = 0.1e1 / t93;
	t81 = -t93 * t106 + t104;
	t80 = -t93 * t107 - t103;
	t76 = 0.1e1 / t79;
	t75 = (0.1e1 + t110) * t109;
	t72 = 0.1e1 / t74;
	t71 = 0.1e1 / (t89 * t102 + 0.1e1);
	t70 = 0.1e1 / t101;
	t69 = ((-t95 * t99 + t96 * t98) * t76 - (-t95 * t96 - t98 * t99) * t113) * t70 * t105;
	t68 = (-t93 * t72 + (t97 * t111 - t85 * t92 + (t85 * t108 - t111) * t75) * t92 * t73) * t71 * t100;
	t1 = [t90 * t86 * t105, t75, t75, 0, 0, 0; (t72 * t108 + (t85 * t89 * t90 * t109 + (-t86 + 0.1e1) * t92 * t84) * t92 * t102) * t71, t68, t68, 0, 0, 0; ((-t80 * t98 + t81 * t95) * t76 - (t80 * t95 + t81 * t98) * t113) * t70, t69, t69, (-t79 * t76 - t112) * t70, 0, t101 * t70;];
	Ja_rot = t1;
else
	Ja_rot=NaN(3,6);
end