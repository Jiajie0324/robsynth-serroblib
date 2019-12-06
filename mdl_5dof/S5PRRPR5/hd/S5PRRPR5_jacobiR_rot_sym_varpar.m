% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S5PRRPR5
% Use Code from Maple symbolic Code Generation
% 
% Rotationsmatrix-Jacobi-Matrix: Differentieller Zusammenhang zwischen
% gestapelter Endeffektor-Rotationsmatrix und verallgemeinerten Koordinaten.
% 
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt. (0=Basis).
%   Siehe auch: bsp_3T1R_fkine_fixb_rotmat_mdh_sym_varpar.m
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d2,d3,d5,theta1,theta4]';
% 
% Output:
% JR_rot [9x5]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:28
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S5PRRPR5_jacobiR_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRPR5_jacobiR_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5PRRPR5_jacobiR_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S5PRRPR5_jacobiR_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiR_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 16:28:54
	% EndTime: 2019-12-05 16:28:54
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiR_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 16:28:54
	% EndTime: 2019-12-05 16:28:54
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiR_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 16:28:54
	% EndTime: 2019-12-05 16:28:54
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (5->5), mult. (14->12), div. (0->0), fcn. (24->6), ass. (0->9)
	t22 = cos(pkin(5));
	t23 = sin(qJ(2));
	t26 = t22 * t23;
	t24 = cos(qJ(2));
	t25 = t22 * t24;
	t21 = cos(pkin(9));
	t20 = sin(pkin(5));
	t19 = sin(pkin(9));
	t1 = [0, -t19 * t25 - t21 * t23, 0, 0, 0; 0, -t19 * t23 + t21 * t25, 0, 0, 0; 0, t20 * t24, 0, 0, 0; 0, t19 * t26 - t21 * t24, 0, 0, 0; 0, -t19 * t24 - t21 * t26, 0, 0, 0; 0, -t20 * t23, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiR_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 16:28:54
	% EndTime: 2019-12-05 16:28:54
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (19->13), mult. (57->32), div. (0->0), fcn. (88->8), ass. (0->19)
	t66 = sin(pkin(5));
	t69 = sin(qJ(3));
	t78 = t66 * t69;
	t70 = sin(qJ(2));
	t77 = t66 * t70;
	t71 = cos(qJ(3));
	t76 = t66 * t71;
	t72 = cos(qJ(2));
	t75 = t66 * t72;
	t68 = cos(pkin(5));
	t74 = t68 * t70;
	t73 = t68 * t72;
	t67 = cos(pkin(9));
	t65 = sin(pkin(9));
	t64 = -t65 * t74 + t67 * t72;
	t63 = -t65 * t73 - t67 * t70;
	t62 = t65 * t72 + t67 * t74;
	t61 = -t65 * t70 + t67 * t73;
	t1 = [0, t63 * t71, -t64 * t69 + t65 * t76, 0, 0; 0, t61 * t71, -t62 * t69 - t67 * t76, 0, 0; 0, t71 * t75, t68 * t71 - t69 * t77, 0, 0; 0, -t63 * t69, -t64 * t71 - t65 * t78, 0, 0; 0, -t61 * t69, -t62 * t71 + t67 * t78, 0, 0; 0, -t69 * t75, -t68 * t69 - t70 * t76, 0, 0; 0, t64, 0, 0, 0; 0, t62, 0, 0, 0; 0, t77, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiR_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 16:28:54
	% EndTime: 2019-12-05 16:28:54
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (37->14), mult. (57->32), div. (0->0), fcn. (88->8), ass. (0->20)
	t75 = sin(pkin(9));
	t76 = sin(pkin(5));
	t86 = t75 * t76;
	t77 = cos(pkin(9));
	t85 = t76 * t77;
	t79 = sin(qJ(2));
	t84 = t76 * t79;
	t80 = cos(qJ(2));
	t83 = t76 * t80;
	t78 = cos(pkin(5));
	t82 = t78 * t79;
	t81 = t78 * t80;
	t74 = qJ(3) + pkin(10);
	t73 = cos(t74);
	t72 = sin(t74);
	t71 = -t75 * t82 + t77 * t80;
	t70 = -t75 * t81 - t77 * t79;
	t69 = t75 * t80 + t77 * t82;
	t68 = -t75 * t79 + t77 * t81;
	t1 = [0, t70 * t73, -t71 * t72 + t73 * t86, 0, 0; 0, t68 * t73, -t69 * t72 - t73 * t85, 0, 0; 0, t73 * t83, -t72 * t84 + t73 * t78, 0, 0; 0, -t70 * t72, -t71 * t73 - t72 * t86, 0, 0; 0, -t68 * t72, -t69 * t73 + t72 * t85, 0, 0; 0, -t72 * t83, -t72 * t78 - t73 * t84, 0, 0; 0, t71, 0, 0, 0; 0, t69, 0, 0, 0; 0, t84, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiR_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 16:28:54
	% EndTime: 2019-12-05 16:28:55
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (93->28), mult. (163->65), div. (0->0), fcn. (238->10), ass. (0->31)
	t119 = qJ(3) + pkin(10);
	t118 = cos(t119);
	t124 = sin(qJ(5));
	t136 = t118 * t124;
	t126 = cos(qJ(5));
	t135 = t118 * t126;
	t120 = sin(pkin(9));
	t121 = sin(pkin(5));
	t134 = t120 * t121;
	t122 = cos(pkin(9));
	t133 = t121 * t122;
	t125 = sin(qJ(2));
	t132 = t121 * t125;
	t123 = cos(pkin(5));
	t131 = t123 * t125;
	t127 = cos(qJ(2));
	t130 = t123 * t127;
	t129 = t124 * t127;
	t128 = t126 * t127;
	t117 = sin(t119);
	t115 = -t120 * t131 + t122 * t127;
	t114 = t120 * t130 + t122 * t125;
	t113 = t120 * t127 + t122 * t131;
	t112 = t120 * t125 - t122 * t130;
	t111 = t123 * t117 + t118 * t132;
	t110 = -t117 * t132 + t123 * t118;
	t109 = t115 * t118 + t117 * t134;
	t108 = -t115 * t117 + t118 * t134;
	t107 = t113 * t118 - t117 * t133;
	t106 = -t113 * t117 - t118 * t133;
	t1 = [0, -t114 * t135 + t115 * t124, t108 * t126, 0, -t109 * t124 + t114 * t126; 0, -t112 * t135 + t113 * t124, t106 * t126, 0, -t107 * t124 + t112 * t126; 0, (t118 * t128 + t124 * t125) * t121, t110 * t126, 0, -t111 * t124 - t121 * t128; 0, t114 * t136 + t115 * t126, -t108 * t124, 0, -t109 * t126 - t114 * t124; 0, t112 * t136 + t113 * t126, -t106 * t124, 0, -t107 * t126 - t112 * t124; 0, (-t118 * t129 + t125 * t126) * t121, -t110 * t124, 0, -t111 * t126 + t121 * t129; 0, -t114 * t117, t109, 0, 0; 0, -t112 * t117, t107, 0, 0; 0, t121 * t127 * t117, t111, 0, 0;];
	JR_rot = t1;
else
	JR_rot=NaN(9,5);
end