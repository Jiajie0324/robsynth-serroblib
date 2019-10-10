% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RRRRPR7
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
% Datum: 2019-10-10 12:42
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RRRRPR7_jacobiR_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR7_jacobiR_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRRPR7_jacobiR_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRPR7_jacobiR_rot_sym_varpar: pkin has to be [12x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiR_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:42:14
	% EndTime: 2019-10-10 12:42:14
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiR_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:42:14
	% EndTime: 2019-10-10 12:42:14
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
	% StartTime: 2019-10-10 12:42:14
	% EndTime: 2019-10-10 12:42:14
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
	% StartTime: 2019-10-10 12:42:14
	% EndTime: 2019-10-10 12:42:14
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
	% StartTime: 2019-10-10 12:42:14
	% EndTime: 2019-10-10 12:42:15
	% DurationCPUTime: 0.15s
	% Computational Cost: add. (77->18), mult. (117->30), div. (0->0), fcn. (180->8), ass. (0->28)
	t108 = sin(pkin(6));
	t110 = sin(qJ(2));
	t122 = t108 * t110;
	t111 = sin(qJ(1));
	t121 = t108 * t111;
	t112 = cos(qJ(2));
	t120 = t108 * t112;
	t113 = cos(qJ(1));
	t119 = t108 * t113;
	t118 = t111 * t110;
	t117 = t111 * t112;
	t116 = t113 * t110;
	t115 = t113 * t112;
	t109 = cos(pkin(6));
	t101 = t109 * t116 + t117;
	t107 = qJ(3) + qJ(4);
	t105 = sin(t107);
	t106 = cos(t107);
	t95 = -t101 * t106 + t105 * t119;
	t114 = t101 * t105 + t106 * t119;
	t103 = -t109 * t118 + t115;
	t102 = t109 * t117 + t116;
	t100 = t109 * t115 - t118;
	t99 = -t105 * t109 - t106 * t122;
	t98 = -t105 * t122 + t106 * t109;
	t97 = t103 * t106 + t105 * t121;
	t96 = -t103 * t105 + t106 * t121;
	t1 = [t95, -t102 * t106, t96, t96, 0, 0; t97, t100 * t106, -t114, -t114, 0, 0; 0, t106 * t120, t98, t98, 0, 0; t114, t102 * t105, -t97, -t97, 0, 0; t96, -t100 * t105, t95, t95, 0, 0; 0, -t105 * t120, t99, t99, 0, 0; t100, t103, 0, 0, 0, 0; t102, t101, 0, 0, 0, 0; 0, t122, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiR_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:42:14
	% EndTime: 2019-10-10 12:42:15
	% DurationCPUTime: 0.14s
	% Computational Cost: add. (115->18), mult. (117->30), div. (0->0), fcn. (180->8), ass. (0->28)
	t113 = sin(pkin(6));
	t115 = sin(qJ(2));
	t127 = t113 * t115;
	t116 = sin(qJ(1));
	t126 = t113 * t116;
	t117 = cos(qJ(2));
	t125 = t113 * t117;
	t118 = cos(qJ(1));
	t124 = t113 * t118;
	t123 = t116 * t115;
	t122 = t116 * t117;
	t121 = t118 * t115;
	t120 = t118 * t117;
	t114 = cos(pkin(6));
	t106 = t114 * t121 + t122;
	t112 = qJ(3) + qJ(4) + pkin(12);
	t110 = sin(t112);
	t111 = cos(t112);
	t100 = -t106 * t111 + t110 * t124;
	t119 = t106 * t110 + t111 * t124;
	t108 = -t114 * t123 + t120;
	t107 = t114 * t122 + t121;
	t105 = t114 * t120 - t123;
	t104 = -t110 * t114 - t111 * t127;
	t103 = -t110 * t127 + t111 * t114;
	t102 = t108 * t111 + t110 * t126;
	t101 = -t108 * t110 + t111 * t126;
	t1 = [t100, -t107 * t111, t101, t101, 0, 0; t102, t105 * t111, -t119, -t119, 0, 0; 0, t111 * t125, t103, t103, 0, 0; t119, t107 * t110, -t102, -t102, 0, 0; t101, -t105 * t110, t100, t100, 0, 0; 0, -t110 * t125, t104, t104, 0, 0; t105, t108, 0, 0, 0, 0; t107, t106, 0, 0, 0, 0; 0, t127, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiR_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:42:15
	% EndTime: 2019-10-10 12:42:15
	% DurationCPUTime: 0.17s
	% Computational Cost: add. (230->35), mult. (270->63), div. (0->0), fcn. (395->10), ass. (0->43)
	t170 = cos(pkin(6));
	t172 = sin(qJ(2));
	t176 = cos(qJ(1));
	t178 = t176 * t172;
	t173 = sin(qJ(1));
	t175 = cos(qJ(2));
	t180 = t173 * t175;
	t161 = t170 * t178 + t180;
	t168 = qJ(3) + qJ(4) + pkin(12);
	t166 = sin(t168);
	t167 = cos(t168);
	t169 = sin(pkin(6));
	t183 = t169 * t176;
	t154 = -t161 * t167 + t166 * t183;
	t177 = t176 * t175;
	t181 = t173 * t172;
	t160 = -t170 * t177 + t181;
	t171 = sin(qJ(6));
	t174 = cos(qJ(6));
	t194 = t154 * t171 + t160 * t174;
	t193 = t154 * t174 - t160 * t171;
	t152 = -t161 * t166 - t167 * t183;
	t192 = t152 * t171;
	t163 = -t170 * t181 + t177;
	t184 = t169 * t173;
	t155 = t163 * t166 - t167 * t184;
	t191 = t155 * t171;
	t185 = t169 * t172;
	t158 = -t166 * t185 + t170 * t167;
	t190 = t158 * t171;
	t187 = t167 * t171;
	t186 = t167 * t174;
	t182 = t171 * t175;
	t179 = t174 * t175;
	t162 = t170 * t180 + t178;
	t159 = t170 * t166 + t167 * t185;
	t157 = t158 * t174;
	t156 = t163 * t167 + t166 * t184;
	t151 = t155 * t174;
	t150 = t152 * t174;
	t149 = t156 * t174 + t162 * t171;
	t148 = -t156 * t171 + t162 * t174;
	t1 = [t193, -t162 * t186 + t163 * t171, -t151, -t151, 0, t148; t149, -t160 * t186 + t161 * t171, t150, t150, 0, t194; 0, (t167 * t179 + t171 * t172) * t169, t157, t157, 0, -t159 * t171 - t169 * t179; -t194, t162 * t187 + t163 * t174, t191, t191, 0, -t149; t148, t160 * t187 + t161 * t174, -t192, -t192, 0, t193; 0, (-t167 * t182 + t172 * t174) * t169, -t190, -t190, 0, -t159 * t174 + t169 * t182; t152, -t162 * t166, t156, t156, 0, 0; t155, -t160 * t166, -t154, -t154, 0, 0; 0, t169 * t175 * t166, t159, t159, 0, 0;];
	JR_rot = t1;
else
	JR_rot=NaN(9,6);
end