% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RRPRRP5
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,theta3]';
% 
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 10:35
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RRPRRP5_jacobiR_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP5_jacobiR_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPRRP5_jacobiR_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRRP5_jacobiR_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiR_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:35:23
	% EndTime: 2019-10-10 10:35:23
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiR_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:35:23
	% EndTime: 2019-10-10 10:35:23
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
	% StartTime: 2019-10-10 10:35:23
	% EndTime: 2019-10-10 10:35:23
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
	% StartTime: 2019-10-10 10:35:23
	% EndTime: 2019-10-10 10:35:23
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (26->10), mult. (74->18), div. (0->0), fcn. (112->8), ass. (0->17)
	t70 = cos(pkin(6));
	t67 = sin(pkin(11));
	t69 = cos(pkin(11));
	t71 = sin(qJ(2));
	t73 = cos(qJ(2));
	t75 = t73 * t67 + t71 * t69;
	t63 = t75 * t70;
	t64 = t71 * t67 - t73 * t69;
	t72 = sin(qJ(1));
	t74 = cos(qJ(1));
	t77 = -t74 * t63 + t72 * t64;
	t76 = t72 * t63 + t74 * t64;
	t68 = sin(pkin(6));
	t62 = t64 * t70;
	t61 = t72 * t62 - t74 * t75;
	t60 = -t74 * t62 - t72 * t75;
	t1 = [t77, t61, 0, 0, 0, 0; -t76, t60, 0, 0, 0, 0; 0, -t64 * t68, 0, 0, 0, 0; -t60, t76, 0, 0, 0, 0; t61, t77, 0, 0, 0, 0; 0, -t75 * t68, 0, 0, 0, 0; t74 * t68, 0, 0, 0, 0, 0; t72 * t68, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiR_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:35:23
	% EndTime: 2019-10-10 10:35:23
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (66->18), mult. (182->36), div. (0->0), fcn. (266->10), ass. (0->27)
	t115 = sin(pkin(6));
	t120 = sin(qJ(1));
	t128 = t115 * t120;
	t123 = cos(qJ(1));
	t127 = t115 * t123;
	t117 = cos(pkin(6));
	t114 = sin(pkin(11));
	t116 = cos(pkin(11));
	t119 = sin(qJ(2));
	t122 = cos(qJ(2));
	t125 = t122 * t114 + t119 * t116;
	t109 = t125 * t117;
	t110 = t119 * t114 - t122 * t116;
	t103 = t123 * t109 - t120 * t110;
	t118 = sin(qJ(4));
	t121 = cos(qJ(4));
	t126 = -t103 * t121 + t118 * t127;
	t105 = -t120 * t109 - t123 * t110;
	t124 = t103 * t118 + t121 * t127;
	t108 = t110 * t117;
	t107 = t125 * t115;
	t106 = t110 * t115;
	t104 = t120 * t108 - t123 * t125;
	t102 = -t123 * t108 - t120 * t125;
	t101 = t105 * t121 + t118 * t128;
	t100 = -t105 * t118 + t121 * t128;
	t1 = [t126, t104 * t121, 0, t100, 0, 0; t101, t102 * t121, 0, -t124, 0, 0; 0, -t106 * t121, 0, -t107 * t118 + t117 * t121, 0, 0; t124, -t104 * t118, 0, -t101, 0, 0; t100, -t102 * t118, 0, t126, 0, 0; 0, t106 * t118, 0, -t107 * t121 - t117 * t118, 0, 0; t102, t105, 0, 0, 0, 0; -t104, t103, 0, 0, 0, 0; 0, t107, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiR_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:35:24
	% EndTime: 2019-10-10 10:35:24
	% DurationCPUTime: 0.25s
	% Computational Cost: add. (154->31), mult. (425->65), div. (0->0), fcn. (606->12), ass. (0->37)
	t173 = sin(qJ(4));
	t177 = cos(qJ(4));
	t171 = cos(pkin(6));
	t168 = sin(pkin(11));
	t170 = cos(pkin(11));
	t174 = sin(qJ(2));
	t178 = cos(qJ(2));
	t181 = t178 * t168 + t174 * t170;
	t162 = t181 * t171;
	t163 = t174 * t168 - t178 * t170;
	t175 = sin(qJ(1));
	t179 = cos(qJ(1));
	t183 = t179 * t162 - t175 * t163;
	t169 = sin(pkin(6));
	t188 = t169 * t179;
	t148 = t173 * t188 - t177 * t183;
	t180 = t163 * t171;
	t152 = -t175 * t181 - t179 * t180;
	t172 = sin(qJ(5));
	t176 = cos(qJ(5));
	t193 = t148 * t172 - t152 * t176;
	t192 = t148 * t176 + t152 * t172;
	t189 = t169 * t175;
	t187 = t172 * t177;
	t185 = t176 * t177;
	t182 = -t175 * t162 - t179 * t163;
	t146 = -t173 * t183 - t177 * t188;
	t161 = t181 * t169;
	t160 = t163 * t169;
	t158 = t161 * t177 + t171 * t173;
	t157 = -t161 * t173 + t171 * t177;
	t155 = t175 * t180 - t179 * t181;
	t150 = t173 * t189 + t177 * t182;
	t149 = t173 * t182 - t177 * t189;
	t145 = t150 * t176 - t155 * t172;
	t144 = -t150 * t172 - t155 * t176;
	t1 = [t192, t155 * t185 + t172 * t182, 0, -t149 * t176, t144, 0; t145, t152 * t185 + t172 * t183, 0, t146 * t176, t193, 0; 0, -t160 * t185 + t161 * t172, 0, t157 * t176, -t158 * t172 + t160 * t176, 0; -t193, -t155 * t187 + t176 * t182, 0, t149 * t172, -t145, 0; t144, -t152 * t187 + t176 * t183, 0, -t146 * t172, t192, 0; 0, t160 * t187 + t161 * t176, 0, -t157 * t172, -t158 * t176 - t160 * t172, 0; t146, t155 * t173, 0, t150, 0, 0; t149, t152 * t173, 0, -t148, 0, 0; 0, -t160 * t173, 0, t158, 0, 0;];
	JR_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiR_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:35:24
	% EndTime: 2019-10-10 10:35:24
	% DurationCPUTime: 0.28s
	% Computational Cost: add. (154->31), mult. (425->65), div. (0->0), fcn. (606->12), ass. (0->37)
	t175 = sin(qJ(4));
	t179 = cos(qJ(4));
	t173 = cos(pkin(6));
	t170 = sin(pkin(11));
	t172 = cos(pkin(11));
	t176 = sin(qJ(2));
	t180 = cos(qJ(2));
	t183 = t180 * t170 + t176 * t172;
	t164 = t183 * t173;
	t165 = t176 * t170 - t180 * t172;
	t177 = sin(qJ(1));
	t181 = cos(qJ(1));
	t185 = t181 * t164 - t177 * t165;
	t171 = sin(pkin(6));
	t190 = t171 * t181;
	t150 = t175 * t190 - t179 * t185;
	t182 = t165 * t173;
	t154 = -t177 * t183 - t181 * t182;
	t174 = sin(qJ(5));
	t178 = cos(qJ(5));
	t195 = t150 * t174 - t154 * t178;
	t194 = t150 * t178 + t154 * t174;
	t191 = t171 * t177;
	t189 = t174 * t179;
	t187 = t178 * t179;
	t184 = -t177 * t164 - t181 * t165;
	t148 = -t175 * t185 - t179 * t190;
	t163 = t183 * t171;
	t162 = t165 * t171;
	t160 = t163 * t179 + t173 * t175;
	t159 = -t163 * t175 + t173 * t179;
	t157 = t177 * t182 - t181 * t183;
	t152 = t175 * t191 + t179 * t184;
	t151 = t175 * t184 - t179 * t191;
	t147 = t152 * t178 - t157 * t174;
	t146 = -t152 * t174 - t157 * t178;
	t1 = [t194, t157 * t187 + t174 * t184, 0, -t151 * t178, t146, 0; t147, t154 * t187 + t174 * t185, 0, t148 * t178, t195, 0; 0, -t162 * t187 + t163 * t174, 0, t159 * t178, -t160 * t174 + t162 * t178, 0; -t195, -t157 * t189 + t178 * t184, 0, t151 * t174, -t147, 0; t146, -t154 * t189 + t178 * t185, 0, -t148 * t174, t194, 0; 0, t162 * t189 + t163 * t178, 0, -t159 * t174, -t160 * t178 - t162 * t174, 0; t148, t157 * t175, 0, t152, 0, 0; t151, t154 * t175, 0, -t150, 0, 0; 0, -t162 * t175, 0, t160, 0, 0;];
	JR_rot = t1;
else
	JR_rot=NaN(9,6);
end