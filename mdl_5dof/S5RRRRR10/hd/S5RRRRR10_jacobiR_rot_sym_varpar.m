% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S5RRRRR10
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
%   pkin=[a2,a3,a4,a5,alpha2,d1,d2,d3,d4,d5]';
% 
% Output:
% JR_rot [9x5]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 21:01
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S5RRRRR10_jacobiR_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR10_jacobiR_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RRRRR10_jacobiR_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S5RRRRR10_jacobiR_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiR_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 21:01:26
	% EndTime: 2019-12-29 21:01:26
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiR_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 21:01:26
	% EndTime: 2019-12-29 21:01:26
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (3->3), mult. (0->0), div. (0->0), fcn. (4->2), ass. (0->3)
	t9 = cos(qJ(1));
	t8 = sin(qJ(1));
	t1 = [-t8, 0, 0, 0, 0; t9, 0, 0, 0, 0; 0, 0, 0, 0, 0; -t9, 0, 0, 0, 0; -t8, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiR_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 21:01:26
	% EndTime: 2019-12-29 21:01:26
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (9->7), mult. (28->12), div. (0->0), fcn. (48->6), ass. (0->15)
	t50 = sin(qJ(2));
	t51 = sin(qJ(1));
	t57 = t51 * t50;
	t52 = cos(qJ(2));
	t56 = t51 * t52;
	t53 = cos(qJ(1));
	t55 = t53 * t50;
	t54 = t53 * t52;
	t49 = cos(pkin(5));
	t48 = sin(pkin(5));
	t47 = -t49 * t57 + t54;
	t46 = -t49 * t56 - t55;
	t45 = -t49 * t55 - t56;
	t44 = -t49 * t54 + t57;
	t1 = [t45, t46, 0, 0, 0; t47, -t44, 0, 0, 0; 0, t48 * t52, 0, 0, 0; t44, -t47, 0, 0, 0; t46, t45, 0, 0, 0; 0, -t48 * t50, 0, 0, 0; t53 * t48, 0, 0, 0, 0; t51 * t48, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiR_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 21:01:26
	% EndTime: 2019-12-29 21:01:26
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (29->15), mult. (87->31), div. (0->0), fcn. (134->8), ass. (0->25)
	t83 = sin(pkin(5));
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
	t84 = cos(pkin(5));
	t79 = t84 * t94 + t95;
	t85 = sin(qJ(3));
	t92 = -t79 * t88 + t85 * t97;
	t91 = t79 * t85 + t88 * t97;
	t81 = -t84 * t96 + t93;
	t80 = t84 * t95 + t94;
	t78 = t84 * t93 - t96;
	t77 = t87 * t83 * t85 + t81 * t88;
	t76 = -t81 * t85 + t87 * t99;
	t1 = [t92, -t80 * t88, t76, 0, 0; t77, t78 * t88, -t91, 0, 0; 0, t88 * t98, -t85 * t100 + t84 * t88, 0, 0; t91, t80 * t85, -t77, 0, 0; t76, -t78 * t85, t92, 0, 0; 0, -t85 * t98, -t84 * t85 - t86 * t99, 0, 0; t78, t81, 0, 0, 0; t80, t79, 0, 0, 0; 0, t100, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiR_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 21:01:26
	% EndTime: 2019-12-29 21:01:26
	% DurationCPUTime: 0.22s
	% Computational Cost: add. (77->18), mult. (117->30), div. (0->0), fcn. (180->8), ass. (0->28)
	t108 = sin(pkin(5));
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
	t109 = cos(pkin(5));
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
	t1 = [t95, -t102 * t106, t96, t96, 0; t97, t100 * t106, -t114, -t114, 0; 0, t106 * t120, t98, t98, 0; t114, t102 * t105, -t97, -t97, 0; t96, -t100 * t105, t95, t95, 0; 0, -t105 * t120, t99, t99, 0; t100, t103, 0, 0, 0; t102, t101, 0, 0, 0; 0, t122, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiR_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 21:01:27
	% EndTime: 2019-12-29 21:01:27
	% DurationCPUTime: 0.30s
	% Computational Cost: add. (161->35), mult. (270->63), div. (0->0), fcn. (395->10), ass. (0->43)
	t165 = cos(pkin(5));
	t167 = sin(qJ(2));
	t171 = cos(qJ(1));
	t173 = t171 * t167;
	t168 = sin(qJ(1));
	t170 = cos(qJ(2));
	t175 = t168 * t170;
	t156 = t165 * t173 + t175;
	t163 = qJ(3) + qJ(4);
	t161 = sin(t163);
	t162 = cos(t163);
	t164 = sin(pkin(5));
	t178 = t164 * t171;
	t149 = -t156 * t162 + t161 * t178;
	t172 = t171 * t170;
	t176 = t168 * t167;
	t155 = -t165 * t172 + t176;
	t166 = sin(qJ(5));
	t169 = cos(qJ(5));
	t189 = t149 * t166 + t155 * t169;
	t188 = t149 * t169 - t155 * t166;
	t147 = -t156 * t161 - t162 * t178;
	t187 = t147 * t166;
	t158 = -t165 * t176 + t172;
	t179 = t164 * t168;
	t150 = t158 * t161 - t162 * t179;
	t186 = t150 * t166;
	t180 = t164 * t167;
	t153 = -t161 * t180 + t165 * t162;
	t185 = t153 * t166;
	t182 = t162 * t166;
	t181 = t162 * t169;
	t177 = t166 * t170;
	t174 = t169 * t170;
	t157 = t165 * t175 + t173;
	t154 = t165 * t161 + t162 * t180;
	t152 = t153 * t169;
	t151 = t158 * t162 + t161 * t179;
	t146 = t150 * t169;
	t145 = t147 * t169;
	t144 = t151 * t169 + t157 * t166;
	t143 = -t151 * t166 + t157 * t169;
	t1 = [t188, -t157 * t181 + t158 * t166, -t146, -t146, t143; t144, -t155 * t181 + t156 * t166, t145, t145, t189; 0, (t162 * t174 + t166 * t167) * t164, t152, t152, -t154 * t166 - t164 * t174; -t189, t157 * t182 + t158 * t169, t186, t186, -t144; t143, t155 * t182 + t156 * t169, -t187, -t187, t188; 0, (-t162 * t177 + t167 * t169) * t164, -t185, -t185, -t154 * t169 + t164 * t177; t147, -t157 * t161, t151, t151, 0; t150, -t155 * t161, -t149, -t149, 0; 0, t164 * t170 * t161, t154, t154, 0;];
	JR_rot = t1;
else
	JR_rot=NaN(9,5);
end