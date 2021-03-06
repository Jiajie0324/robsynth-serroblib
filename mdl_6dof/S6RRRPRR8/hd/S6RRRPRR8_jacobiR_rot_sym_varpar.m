% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RRRPRR8
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d5,d6,theta4]';
% 
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 12:06
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RRRPRR8_jacobiR_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR8_jacobiR_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRPRR8_jacobiR_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRPRR8_jacobiR_rot_sym_varpar: pkin has to be [12x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiR_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:06:07
	% EndTime: 2019-10-10 12:06:07
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiR_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:06:07
	% EndTime: 2019-10-10 12:06:07
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
	% StartTime: 2019-10-10 12:06:07
	% EndTime: 2019-10-10 12:06:08
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
	% StartTime: 2019-10-10 12:06:08
	% EndTime: 2019-10-10 12:06:08
	% DurationCPUTime: 0.08s
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
	% StartTime: 2019-10-10 12:06:08
	% EndTime: 2019-10-10 12:06:08
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
	t90 = qJ(3) + pkin(12);
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
	% StartTime: 2019-10-10 12:06:08
	% EndTime: 2019-10-10 12:06:08
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (125->31), mult. (219->63), div. (0->0), fcn. (320->10), ass. (0->37)
	t143 = cos(pkin(6));
	t145 = sin(qJ(2));
	t149 = cos(qJ(1));
	t151 = t149 * t145;
	t146 = sin(qJ(1));
	t148 = cos(qJ(2));
	t153 = t146 * t148;
	t134 = t143 * t151 + t153;
	t141 = qJ(3) + pkin(12);
	t139 = sin(t141);
	t140 = cos(t141);
	t142 = sin(pkin(6));
	t156 = t142 * t149;
	t128 = -t134 * t140 + t139 * t156;
	t150 = t149 * t148;
	t154 = t146 * t145;
	t133 = -t143 * t150 + t154;
	t144 = sin(qJ(5));
	t147 = cos(qJ(5));
	t164 = t128 * t144 + t133 * t147;
	t163 = t128 * t147 - t133 * t144;
	t160 = t140 * t144;
	t159 = t140 * t147;
	t158 = t142 * t145;
	t157 = t142 * t146;
	t155 = t144 * t148;
	t152 = t147 * t148;
	t126 = -t134 * t139 - t140 * t156;
	t136 = -t143 * t154 + t150;
	t135 = t143 * t153 + t151;
	t132 = t143 * t139 + t140 * t158;
	t131 = -t139 * t158 + t143 * t140;
	t130 = t136 * t140 + t139 * t157;
	t129 = t136 * t139 - t140 * t157;
	t125 = t130 * t147 + t135 * t144;
	t124 = -t130 * t144 + t135 * t147;
	t1 = [t163, -t135 * t159 + t136 * t144, -t129 * t147, 0, t124, 0; t125, -t133 * t159 + t134 * t144, t126 * t147, 0, t164, 0; 0, (t140 * t152 + t144 * t145) * t142, t131 * t147, 0, -t132 * t144 - t142 * t152, 0; -t164, t135 * t160 + t136 * t147, t129 * t144, 0, -t125, 0; t124, t133 * t160 + t134 * t147, -t126 * t144, 0, t163, 0; 0, (-t140 * t155 + t145 * t147) * t142, -t131 * t144, 0, -t132 * t147 + t142 * t155, 0; t126, -t135 * t139, t130, 0, 0, 0; t129, -t133 * t139, -t128, 0, 0, 0; 0, t142 * t148 * t139, t132, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiR_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:06:08
	% EndTime: 2019-10-10 12:06:08
	% DurationCPUTime: 0.28s
	% Computational Cost: add. (207->33), mult. (275->62), div. (0->0), fcn. (402->10), ass. (0->40)
	t166 = cos(pkin(6));
	t167 = sin(qJ(2));
	t170 = cos(qJ(1));
	t172 = t170 * t167;
	t168 = sin(qJ(1));
	t169 = cos(qJ(2));
	t173 = t168 * t169;
	t154 = t166 * t172 + t173;
	t163 = qJ(3) + pkin(12);
	t159 = sin(t163);
	t160 = cos(t163);
	t165 = sin(pkin(6));
	t175 = t165 * t170;
	t148 = -t154 * t160 + t159 * t175;
	t171 = t170 * t169;
	t174 = t168 * t167;
	t153 = -t166 * t171 + t174;
	t164 = qJ(5) + qJ(6);
	t161 = sin(t164);
	t162 = cos(t164);
	t140 = t148 * t161 + t153 * t162;
	t141 = t148 * t162 - t153 * t161;
	t181 = t160 * t161;
	t180 = t160 * t162;
	t179 = t160 * t169;
	t178 = t165 * t167;
	t177 = t165 * t168;
	t176 = t165 * t169;
	t146 = -t154 * t159 - t160 * t175;
	t156 = -t166 * t174 + t171;
	t155 = t166 * t173 + t172;
	t152 = t166 * t159 + t160 * t178;
	t151 = -t159 * t178 + t166 * t160;
	t150 = t156 * t160 + t159 * t177;
	t149 = t156 * t159 - t160 * t177;
	t145 = -t152 * t162 + t161 * t176;
	t144 = -t152 * t161 - t162 * t176;
	t143 = t150 * t162 + t155 * t161;
	t142 = -t150 * t161 + t155 * t162;
	t1 = [t141, -t155 * t180 + t156 * t161, -t149 * t162, 0, t142, t142; t143, -t153 * t180 + t154 * t161, t146 * t162, 0, t140, t140; 0, (t161 * t167 + t162 * t179) * t165, t151 * t162, 0, t144, t144; -t140, t155 * t181 + t156 * t162, t149 * t161, 0, -t143, -t143; t142, t153 * t181 + t154 * t162, -t146 * t161, 0, t141, t141; 0, (-t161 * t179 + t162 * t167) * t165, -t151 * t161, 0, t145, t145; t146, -t155 * t159, t150, 0, 0, 0; t149, -t153 * t159, -t148, 0, 0, 0; 0, t159 * t176, t152, 0, 0, 0;];
	JR_rot = t1;
else
	JR_rot=NaN(9,6);
end