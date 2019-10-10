% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6PRRPRP4
% Use Code from Maple symbolic Code Generation
% 
% Rotationsmatrix-Jacobi-Matrix: Differentieller Zusammenhang zwischen
% gestapelter Endeffektor-Rotationsmatrix und verallgemeinerten Koordinaten.
% 
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt. (0=Basis).
%   Siehe auch: bsp_3T1R_fkine_fixb_rotmat_mdh_sym_varpar.m
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,theta1]';
% 
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 22:21
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6PRRPRP4_jacobiR_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRP4_jacobiR_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6PRRPRP4_jacobiR_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6PRRPRP4_jacobiR_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiR_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:21:55
	% EndTime: 2019-10-09 22:21:55
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiR_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:21:55
	% EndTime: 2019-10-09 22:21:55
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiR_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:21:55
	% EndTime: 2019-10-09 22:21:55
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (5->5), mult. (14->12), div. (0->0), fcn. (24->6), ass. (0->9)
	t22 = cos(pkin(6));
	t23 = sin(qJ(2));
	t26 = t22 * t23;
	t24 = cos(qJ(2));
	t25 = t22 * t24;
	t21 = cos(pkin(10));
	t20 = sin(pkin(6));
	t19 = sin(pkin(10));
	t1 = [0, -t19 * t25 - t21 * t23, 0, 0, 0, 0; 0, -t19 * t23 + t21 * t25, 0, 0, 0, 0; 0, t20 * t24, 0, 0, 0, 0; 0, t19 * t26 - t21 * t24, 0, 0, 0, 0; 0, -t19 * t24 - t21 * t26, 0, 0, 0, 0; 0, -t20 * t23, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiR_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:21:55
	% EndTime: 2019-10-09 22:21:55
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (19->13), mult. (57->32), div. (0->0), fcn. (88->8), ass. (0->19)
	t66 = sin(pkin(6));
	t69 = sin(qJ(3));
	t78 = t66 * t69;
	t70 = sin(qJ(2));
	t77 = t66 * t70;
	t71 = cos(qJ(3));
	t76 = t66 * t71;
	t72 = cos(qJ(2));
	t75 = t66 * t72;
	t68 = cos(pkin(6));
	t74 = t68 * t70;
	t73 = t68 * t72;
	t67 = cos(pkin(10));
	t65 = sin(pkin(10));
	t64 = -t65 * t74 + t67 * t72;
	t63 = -t65 * t73 - t67 * t70;
	t62 = t65 * t72 + t67 * t74;
	t61 = -t65 * t70 + t67 * t73;
	t1 = [0, t63 * t71, -t64 * t69 + t65 * t76, 0, 0, 0; 0, t61 * t71, -t62 * t69 - t67 * t76, 0, 0, 0; 0, t71 * t75, t68 * t71 - t69 * t77, 0, 0, 0; 0, -t63 * t69, -t64 * t71 - t65 * t78, 0, 0, 0; 0, -t61 * t69, -t62 * t71 + t67 * t78, 0, 0, 0; 0, -t69 * t75, -t68 * t69 - t70 * t76, 0, 0, 0; 0, t64, 0, 0, 0, 0; 0, t62, 0, 0, 0, 0; 0, t77, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiR_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:21:55
	% EndTime: 2019-10-09 22:21:56
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (19->13), mult. (57->32), div. (0->0), fcn. (88->8), ass. (0->19)
	t81 = sin(pkin(6));
	t84 = sin(qJ(3));
	t93 = t81 * t84;
	t85 = sin(qJ(2));
	t92 = t81 * t85;
	t86 = cos(qJ(3));
	t91 = t81 * t86;
	t87 = cos(qJ(2));
	t90 = t81 * t87;
	t83 = cos(pkin(6));
	t89 = t83 * t85;
	t88 = t83 * t87;
	t82 = cos(pkin(10));
	t80 = sin(pkin(10));
	t79 = -t80 * t89 + t82 * t87;
	t78 = -t80 * t88 - t82 * t85;
	t77 = t80 * t87 + t82 * t89;
	t76 = -t80 * t85 + t82 * t88;
	t1 = [0, t79, 0, 0, 0, 0; 0, t77, 0, 0, 0, 0; 0, t92, 0, 0, 0, 0; 0, -t78 * t86, t79 * t84 - t80 * t91, 0, 0, 0; 0, -t76 * t86, t77 * t84 + t82 * t91, 0, 0, 0; 0, -t86 * t90, -t83 * t86 + t84 * t92, 0, 0, 0; 0, t78 * t84, t79 * t86 + t80 * t93, 0, 0, 0; 0, t76 * t84, t77 * t86 - t82 * t93, 0, 0, 0; 0, t84 * t90, t83 * t84 + t85 * t91, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiR_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:21:56
	% EndTime: 2019-10-09 22:21:56
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (51->27), mult. (163->63), div. (0->0), fcn. (238->10), ass. (0->29)
	t110 = sin(pkin(6));
	t114 = sin(qJ(3));
	t126 = t110 * t114;
	t117 = cos(qJ(3));
	t125 = t110 * t117;
	t112 = cos(pkin(6));
	t115 = sin(qJ(2));
	t124 = t112 * t115;
	t118 = cos(qJ(2));
	t123 = t112 * t118;
	t113 = sin(qJ(5));
	t122 = t113 * t114;
	t121 = t113 * t118;
	t116 = cos(qJ(5));
	t120 = t114 * t116;
	t119 = t116 * t118;
	t111 = cos(pkin(10));
	t109 = sin(pkin(10));
	t107 = t112 * t114 + t115 * t125;
	t106 = -t112 * t117 + t115 * t126;
	t105 = -t109 * t124 + t111 * t118;
	t104 = t109 * t123 + t111 * t115;
	t103 = t109 * t118 + t111 * t124;
	t102 = t109 * t115 - t111 * t123;
	t101 = t105 * t117 + t109 * t126;
	t100 = t105 * t114 - t109 * t125;
	t99 = t103 * t117 - t111 * t126;
	t98 = t103 * t114 + t111 * t125;
	t1 = [0, -t104 * t122 + t105 * t116, t101 * t113, 0, t100 * t116 - t104 * t113, 0; 0, -t102 * t122 + t103 * t116, t99 * t113, 0, -t102 * t113 + t98 * t116, 0; 0, (t114 * t121 + t115 * t116) * t110, t107 * t113, 0, t106 * t116 + t110 * t121, 0; 0, -t104 * t120 - t105 * t113, t101 * t116, 0, -t100 * t113 - t104 * t116, 0; 0, -t102 * t120 - t103 * t113, t99 * t116, 0, -t102 * t116 - t98 * t113, 0; 0, (-t113 * t115 + t114 * t119) * t110, t107 * t116, 0, -t106 * t113 + t110 * t119, 0; 0, -t104 * t117, -t100, 0, 0, 0; 0, -t102 * t117, -t98, 0, 0, 0; 0, t118 * t125, -t106, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiR_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:21:56
	% EndTime: 2019-10-09 22:21:56
	% DurationCPUTime: 0.15s
	% Computational Cost: add. (51->27), mult. (163->63), div. (0->0), fcn. (238->10), ass. (0->29)
	t119 = sin(pkin(6));
	t123 = sin(qJ(3));
	t135 = t119 * t123;
	t126 = cos(qJ(3));
	t134 = t119 * t126;
	t121 = cos(pkin(6));
	t124 = sin(qJ(2));
	t133 = t121 * t124;
	t127 = cos(qJ(2));
	t132 = t121 * t127;
	t122 = sin(qJ(5));
	t131 = t122 * t123;
	t130 = t122 * t127;
	t125 = cos(qJ(5));
	t129 = t123 * t125;
	t128 = t125 * t127;
	t120 = cos(pkin(10));
	t118 = sin(pkin(10));
	t116 = t121 * t123 + t124 * t134;
	t115 = -t121 * t126 + t124 * t135;
	t114 = -t118 * t133 + t120 * t127;
	t113 = t118 * t132 + t120 * t124;
	t112 = t118 * t127 + t120 * t133;
	t111 = t118 * t124 - t120 * t132;
	t110 = t114 * t126 + t118 * t135;
	t109 = t114 * t123 - t118 * t134;
	t108 = t112 * t126 - t120 * t135;
	t107 = t112 * t123 + t120 * t134;
	t1 = [0, -t113 * t131 + t114 * t125, t110 * t122, 0, t109 * t125 - t113 * t122, 0; 0, -t111 * t131 + t112 * t125, t108 * t122, 0, t107 * t125 - t111 * t122, 0; 0, (t123 * t130 + t124 * t125) * t119, t116 * t122, 0, t115 * t125 + t119 * t130, 0; 0, -t113 * t129 - t114 * t122, t110 * t125, 0, -t109 * t122 - t113 * t125, 0; 0, -t111 * t129 - t112 * t122, t108 * t125, 0, -t107 * t122 - t111 * t125, 0; 0, (-t122 * t124 + t123 * t128) * t119, t116 * t125, 0, -t115 * t122 + t119 * t128, 0; 0, -t113 * t126, -t109, 0, 0, 0; 0, -t111 * t126, -t107, 0, 0, 0; 0, t127 * t134, -t115, 0, 0, 0;];
	JR_rot = t1;
else
	JR_rot=NaN(9,6);
end