% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RRRPPR6
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
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d6,theta4]';
% 
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 11:26
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RRRPPR6_jacobiR_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR6_jacobiR_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRPPR6_jacobiR_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPPR6_jacobiR_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiR_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:25:56
	% EndTime: 2019-10-10 11:25:56
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiR_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:25:56
	% EndTime: 2019-10-10 11:25:56
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (3->3), mult. (0->0), div. (0->0), fcn. (4->2), ass. (0->3)
	t9 = cos(qJ(1));
	t8 = sin(qJ(1));
	t1 = [-t8, 0, 0, 0, 0, 0; t9, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; -t9, 0, 0, 0, 0, 0; -t8, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiR_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:25:56
	% EndTime: 2019-10-10 11:25:56
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (9->7), mult. (28->12), div. (0->0), fcn. (48->6), ass. (0->15)
	t50 = sin(qJ(2));
	t51 = sin(qJ(1));
	t57 = t51 * t50;
	t52 = cos(qJ(2));
	t56 = t51 * t52;
	t53 = cos(qJ(1));
	t55 = t53 * t50;
	t54 = t53 * t52;
	t49 = cos(pkin(6));
	t48 = sin(pkin(6));
	t47 = -t49 * t57 + t54;
	t46 = -t49 * t56 - t55;
	t45 = -t49 * t55 - t56;
	t44 = -t49 * t54 + t57;
	t1 = [t45, t46, 0, 0, 0, 0; t47, -t44, 0, 0, 0, 0; 0, t48 * t52, 0, 0, 0, 0; t44, -t47, 0, 0, 0, 0; t46, t45, 0, 0, 0, 0; 0, -t48 * t50, 0, 0, 0, 0; t53 * t48, 0, 0, 0, 0, 0; t51 * t48, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiR_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:25:56
	% EndTime: 2019-10-10 11:25:56
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (29->15), mult. (87->31), div. (0->0), fcn. (134->8), ass. (0->25)
	t83 = sin(pkin(6));
	t86 = sin(qJ(2));
	t100 = t83 * t86;
	t88 = cos(qJ(3));
	t99 = t83 * t88;
	t89 = cos(qJ(2));
	t98 = t83 * t89;
	t90 = cos(qJ(1));
	t97 = t83 * t90;
	t87 = sin(qJ(1));
	t96 = t87 * t86;
	t95 = t87 * t89;
	t94 = t90 * t86;
	t93 = t90 * t89;
	t84 = cos(pkin(6));
	t79 = t84 * t94 + t95;
	t85 = sin(qJ(3));
	t92 = -t79 * t88 + t85 * t97;
	t91 = t79 * t85 + t88 * t97;
	t81 = -t84 * t96 + t93;
	t80 = t84 * t95 + t94;
	t78 = t84 * t93 - t96;
	t77 = t87 * t83 * t85 + t81 * t88;
	t76 = -t81 * t85 + t87 * t99;
	t1 = [t92, -t80 * t88, t76, 0, 0, 0; t77, t78 * t88, -t91, 0, 0, 0; 0, t88 * t98, -t85 * t100 + t84 * t88, 0, 0, 0; t91, t80 * t85, -t77, 0, 0, 0; t76, -t78 * t85, t92, 0, 0, 0; 0, -t85 * t98, -t84 * t85 - t86 * t99, 0, 0, 0; t78, t81, 0, 0, 0, 0; t80, t79, 0, 0, 0, 0; 0, t100, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiR_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:25:56
	% EndTime: 2019-10-10 11:25:56
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (55->16), mult. (87->30), div. (0->0), fcn. (134->8), ass. (0->26)
	t91 = sin(pkin(6));
	t93 = sin(qJ(2));
	t106 = t91 * t93;
	t94 = sin(qJ(1));
	t105 = t91 * t94;
	t95 = cos(qJ(2));
	t104 = t91 * t95;
	t96 = cos(qJ(1));
	t103 = t91 * t96;
	t102 = t94 * t93;
	t101 = t94 * t95;
	t100 = t96 * t93;
	t99 = t96 * t95;
	t92 = cos(pkin(6));
	t84 = t92 * t100 + t101;
	t90 = qJ(3) + pkin(11);
	t88 = sin(t90);
	t89 = cos(t90);
	t98 = t88 * t103 - t84 * t89;
	t97 = t89 * t103 + t84 * t88;
	t86 = -t92 * t102 + t99;
	t85 = t92 * t101 + t100;
	t83 = t92 * t99 - t102;
	t82 = t88 * t105 + t86 * t89;
	t81 = t89 * t105 - t86 * t88;
	t1 = [t98, -t85 * t89, t81, 0, 0, 0; t82, t83 * t89, -t97, 0, 0, 0; 0, t89 * t104, -t88 * t106 + t92 * t89, 0, 0, 0; t97, t85 * t88, -t82, 0, 0, 0; t81, -t83 * t88, t98, 0, 0, 0; 0, -t88 * t104, -t89 * t106 - t92 * t88, 0, 0, 0; t83, t86, 0, 0, 0, 0; t85, t84, 0, 0, 0, 0; 0, t106, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiR_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:25:56
	% EndTime: 2019-10-10 11:25:56
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (55->16), mult. (87->30), div. (0->0), fcn. (134->8), ass. (0->26)
	t109 = sin(pkin(6));
	t111 = sin(qJ(2));
	t124 = t109 * t111;
	t112 = sin(qJ(1));
	t123 = t109 * t112;
	t113 = cos(qJ(2));
	t122 = t109 * t113;
	t114 = cos(qJ(1));
	t121 = t109 * t114;
	t120 = t112 * t111;
	t119 = t112 * t113;
	t118 = t114 * t111;
	t117 = t114 * t113;
	t110 = cos(pkin(6));
	t103 = t110 * t118 + t119;
	t108 = qJ(3) + pkin(11);
	t106 = sin(t108);
	t107 = cos(t108);
	t116 = t103 * t106 + t107 * t121;
	t115 = t103 * t107 - t106 * t121;
	t105 = -t110 * t120 + t117;
	t104 = t110 * t119 + t118;
	t102 = t110 * t117 - t120;
	t101 = t105 * t107 + t106 * t123;
	t100 = t105 * t106 - t107 * t123;
	t1 = [t102, t105, 0, 0, 0, 0; t104, t103, 0, 0, 0, 0; 0, t124, 0, 0, 0, 0; t115, t104 * t107, t100, 0, 0, 0; -t101, -t102 * t107, t116, 0, 0, 0; 0, -t107 * t122, t106 * t124 - t110 * t107, 0, 0, 0; -t116, -t104 * t106, t101, 0, 0, 0; t100, t102 * t106, t115, 0, 0, 0; 0, t106 * t122, t110 * t106 + t107 * t124, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiR_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:25:56
	% EndTime: 2019-10-10 11:25:56
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (122->32), mult. (219->63), div. (0->0), fcn. (320->10), ass. (0->37)
	t138 = cos(pkin(6));
	t140 = sin(qJ(2));
	t144 = cos(qJ(1));
	t147 = t144 * t140;
	t141 = sin(qJ(1));
	t143 = cos(qJ(2));
	t149 = t141 * t143;
	t130 = t138 * t147 + t149;
	t136 = qJ(3) + pkin(11);
	t134 = sin(t136);
	t135 = cos(t136);
	t137 = sin(pkin(6));
	t152 = t137 * t144;
	t122 = t130 * t134 + t135 * t152;
	t146 = t144 * t143;
	t150 = t141 * t140;
	t129 = -t138 * t146 + t150;
	t139 = sin(qJ(6));
	t142 = cos(qJ(6));
	t160 = -t122 * t139 - t129 * t142;
	t159 = t122 * t142 - t129 * t139;
	t156 = t134 * t139;
	t155 = t134 * t142;
	t154 = t137 * t140;
	t153 = t137 * t141;
	t151 = t139 * t143;
	t148 = t142 * t143;
	t145 = -t130 * t135 + t134 * t152;
	t132 = -t138 * t150 + t146;
	t131 = t138 * t149 + t147;
	t128 = t138 * t134 + t135 * t154;
	t127 = t134 * t154 - t138 * t135;
	t126 = t132 * t135 + t134 * t153;
	t125 = t132 * t134 - t135 * t153;
	t121 = t125 * t139 + t131 * t142;
	t120 = t125 * t142 - t131 * t139;
	t1 = [t160, -t131 * t156 + t132 * t142, t126 * t139, 0, 0, t120; t121, -t129 * t156 + t130 * t142, -t145 * t139, 0, 0, t159; 0, (t134 * t151 + t140 * t142) * t137, t128 * t139, 0, 0, t127 * t142 + t137 * t151; -t159, -t131 * t155 - t132 * t139, t126 * t142, 0, 0, -t121; t120, -t129 * t155 - t130 * t139, -t145 * t142, 0, 0, t160; 0, (t134 * t148 - t139 * t140) * t137, t128 * t142, 0, 0, -t127 * t139 + t137 * t148; t145, -t131 * t135, -t125, 0, 0, 0; t126, -t129 * t135, -t122, 0, 0, 0; 0, t137 * t143 * t135, -t127, 0, 0, 0;];
	JR_rot = t1;
else
	JR_rot=NaN(9,6);
end