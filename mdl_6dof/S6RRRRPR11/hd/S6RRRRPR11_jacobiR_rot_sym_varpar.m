% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RRRRPR11
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
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d6,theta5]';
% 
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 12:48
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RRRRPR11_jacobiR_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR11_jacobiR_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRRPR11_jacobiR_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRPR11_jacobiR_rot_sym_varpar: pkin has to be [12x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiR_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:48:01
	% EndTime: 2019-10-10 12:48:01
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiR_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:48:01
	% EndTime: 2019-10-10 12:48:01
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
	% StartTime: 2019-10-10 12:48:01
	% EndTime: 2019-10-10 12:48:01
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
	% StartTime: 2019-10-10 12:48:01
	% EndTime: 2019-10-10 12:48:01
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
	% StartTime: 2019-10-10 12:48:01
	% EndTime: 2019-10-10 12:48:01
	% DurationCPUTime: 0.14s
	% Computational Cost: add. (74->30), mult. (219->62), div. (0->0), fcn. (320->10), ass. (0->36)
	t131 = cos(pkin(6));
	t134 = sin(qJ(2));
	t139 = cos(qJ(1));
	t141 = t139 * t134;
	t135 = sin(qJ(1));
	t138 = cos(qJ(2));
	t144 = t135 * t138;
	t125 = t131 * t141 + t144;
	t133 = sin(qJ(3));
	t137 = cos(qJ(3));
	t130 = sin(pkin(6));
	t147 = t130 * t139;
	t119 = -t125 * t137 + t133 * t147;
	t140 = t139 * t138;
	t145 = t135 * t134;
	t124 = -t131 * t140 + t145;
	t132 = sin(qJ(4));
	t136 = cos(qJ(4));
	t154 = t119 * t132 + t124 * t136;
	t153 = t119 * t136 - t124 * t132;
	t150 = t130 * t133;
	t149 = t130 * t137;
	t148 = t130 * t138;
	t146 = t132 * t137;
	t143 = t136 * t137;
	t142 = t137 * t138;
	t117 = -t125 * t133 - t137 * t147;
	t127 = -t131 * t145 + t140;
	t126 = t131 * t144 + t141;
	t123 = t131 * t133 + t134 * t149;
	t122 = t131 * t137 - t134 * t150;
	t121 = t127 * t137 + t135 * t150;
	t120 = t127 * t133 - t135 * t149;
	t116 = t121 * t136 + t126 * t132;
	t115 = -t121 * t132 + t126 * t136;
	t1 = [t153, -t126 * t143 + t127 * t132, -t120 * t136, t115, 0, 0; t116, -t124 * t143 + t125 * t132, t117 * t136, t154, 0, 0; 0, (t132 * t134 + t136 * t142) * t130, t122 * t136, -t123 * t132 - t136 * t148, 0, 0; -t154, t126 * t146 + t127 * t136, t120 * t132, -t116, 0, 0; t115, t124 * t146 + t125 * t136, -t117 * t132, t153, 0, 0; 0, (-t132 * t142 + t134 * t136) * t130, -t122 * t132, -t123 * t136 + t132 * t148, 0, 0; t117, -t126 * t133, t121, 0, 0, 0; t120, -t124 * t133, -t119, 0, 0, 0; 0, t133 * t148, t123, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiR_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:48:01
	% EndTime: 2019-10-10 12:48:01
	% DurationCPUTime: 0.14s
	% Computational Cost: add. (112->31), mult. (219->62), div. (0->0), fcn. (320->10), ass. (0->37)
	t137 = cos(pkin(6));
	t139 = sin(qJ(2));
	t143 = cos(qJ(1));
	t145 = t143 * t139;
	t140 = sin(qJ(1));
	t142 = cos(qJ(2));
	t147 = t140 * t142;
	t128 = t137 * t145 + t147;
	t138 = sin(qJ(3));
	t141 = cos(qJ(3));
	t136 = sin(pkin(6));
	t149 = t136 * t143;
	t122 = -t128 * t141 + t138 * t149;
	t144 = t143 * t142;
	t148 = t140 * t139;
	t127 = -t137 * t144 + t148;
	t135 = qJ(4) + pkin(12);
	t133 = sin(t135);
	t134 = cos(t135);
	t158 = t122 * t133 + t127 * t134;
	t157 = t122 * t134 - t127 * t133;
	t154 = t133 * t141;
	t153 = t134 * t141;
	t152 = t136 * t138;
	t151 = t136 * t141;
	t150 = t136 * t142;
	t146 = t141 * t142;
	t120 = -t128 * t138 - t141 * t149;
	t130 = -t137 * t148 + t144;
	t129 = t137 * t147 + t145;
	t126 = t137 * t138 + t139 * t151;
	t125 = t137 * t141 - t139 * t152;
	t124 = t130 * t141 + t140 * t152;
	t123 = t130 * t138 - t140 * t151;
	t119 = t124 * t134 + t129 * t133;
	t118 = -t124 * t133 + t129 * t134;
	t1 = [t157, -t129 * t153 + t130 * t133, -t123 * t134, t118, 0, 0; t119, -t127 * t153 + t128 * t133, t120 * t134, t158, 0, 0; 0, (t133 * t139 + t134 * t146) * t136, t125 * t134, -t126 * t133 - t134 * t150, 0, 0; -t158, t129 * t154 + t130 * t134, t123 * t133, -t119, 0, 0; t118, t127 * t154 + t128 * t134, -t120 * t133, t157, 0, 0; 0, (-t133 * t146 + t134 * t139) * t136, -t125 * t133, -t126 * t134 + t133 * t150, 0, 0; t120, -t129 * t138, t124, 0, 0, 0; t123, -t127 * t138, -t122, 0, 0, 0; 0, t138 * t150, t126, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiR_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:48:01
	% EndTime: 2019-10-10 12:48:01
	% DurationCPUTime: 0.19s
	% Computational Cost: add. (194->32), mult. (275->62), div. (0->0), fcn. (402->10), ass. (0->39)
	t157 = cos(pkin(6));
	t159 = sin(qJ(2));
	t163 = cos(qJ(1));
	t165 = t163 * t159;
	t160 = sin(qJ(1));
	t162 = cos(qJ(2));
	t167 = t160 * t162;
	t148 = t157 * t165 + t167;
	t158 = sin(qJ(3));
	t161 = cos(qJ(3));
	t156 = sin(pkin(6));
	t169 = t156 * t163;
	t142 = -t148 * t161 + t158 * t169;
	t164 = t163 * t162;
	t168 = t160 * t159;
	t147 = -t157 * t164 + t168;
	t155 = qJ(4) + pkin(12) + qJ(6);
	t153 = sin(t155);
	t154 = cos(t155);
	t134 = t142 * t153 + t147 * t154;
	t135 = t142 * t154 - t147 * t153;
	t174 = t153 * t161;
	t173 = t154 * t161;
	t172 = t156 * t158;
	t171 = t156 * t161;
	t170 = t156 * t162;
	t166 = t161 * t162;
	t140 = -t148 * t158 - t161 * t169;
	t150 = -t157 * t168 + t164;
	t149 = t157 * t167 + t165;
	t146 = t157 * t158 + t159 * t171;
	t145 = t157 * t161 - t159 * t172;
	t144 = t150 * t161 + t160 * t172;
	t143 = t150 * t158 - t160 * t171;
	t139 = -t146 * t154 + t153 * t170;
	t138 = -t146 * t153 - t154 * t170;
	t137 = t144 * t154 + t149 * t153;
	t136 = -t144 * t153 + t149 * t154;
	t1 = [t135, -t149 * t173 + t150 * t153, -t143 * t154, t136, 0, t136; t137, -t147 * t173 + t148 * t153, t140 * t154, t134, 0, t134; 0, (t153 * t159 + t154 * t166) * t156, t145 * t154, t138, 0, t138; -t134, t149 * t174 + t150 * t154, t143 * t153, -t137, 0, -t137; t136, t147 * t174 + t148 * t154, -t140 * t153, t135, 0, t135; 0, (-t153 * t166 + t154 * t159) * t156, -t145 * t153, t139, 0, t139; t140, -t149 * t158, t144, 0, 0, 0; t143, -t147 * t158, -t142, 0, 0, 0; 0, t158 * t170, t146, 0, 0, 0;];
	JR_rot = t1;
else
	JR_rot=NaN(9,6);
end