% Rotatorische Teilmatrix der geometrischen Jacobi-Matrix für beliebiges Segment von
% S6RRRRRP10
% Use Code from Maple symbolic Code Generation
%
% Geometrische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorgeschwindigkeit und Geschw. der verallgemeinerten Koordinaten.
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d5]';
% 
% Output:
% Jg_rot [3x6]
%   Rotatorische Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 13:11
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Jg_rot = S6RRRRRP10_jacobig_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP10_jacobig_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRRRP10_jacobig_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRRP10_jacobig_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobig_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:11:34
	% EndTime: 2019-10-10 13:11:34
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Jg_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobig_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:11:34
	% EndTime: 2019-10-10 13:11:34
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 1, 0, 0, 0, 0, 0;];
	Jg_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobig_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:11:34
	% EndTime: 2019-10-10 13:11:34
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (1->1), mult. (2->2), div. (0->0), fcn. (5->4), ass. (0->2)
	t43 = sin(pkin(6));
	t1 = [0, sin(qJ(1)) * t43, 0, 0, 0, 0; 0, -cos(qJ(1)) * t43, 0, 0, 0, 0; 1, cos(pkin(6)), 0, 0, 0, 0;];
	Jg_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobig_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:11:34
	% EndTime: 2019-10-10 13:11:34
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (4->4), mult. (9->8), div. (0->0), fcn. (17->6), ass. (0->8)
	t70 = cos(pkin(6));
	t73 = cos(qJ(2));
	t75 = t70 * t73;
	t74 = cos(qJ(1));
	t72 = sin(qJ(1));
	t71 = sin(qJ(2));
	t69 = sin(pkin(6));
	t1 = [0, t72 * t69, t74 * t71 + t72 * t75, 0, 0, 0; 0, -t74 * t69, t72 * t71 - t74 * t75, 0, 0, 0; 1, t70, -t69 * t73, 0, 0, 0;];
	Jg_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobig_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:11:34
	% EndTime: 2019-10-10 13:11:34
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (9->9), mult. (24->18), div. (0->0), fcn. (40->8), ass. (0->15)
	t101 = sin(pkin(6));
	t105 = sin(qJ(1));
	t114 = t105 * t101;
	t104 = sin(qJ(2));
	t113 = t105 * t104;
	t107 = cos(qJ(2));
	t112 = t105 * t107;
	t108 = cos(qJ(1));
	t111 = t108 * t101;
	t110 = t108 * t104;
	t109 = t108 * t107;
	t106 = cos(qJ(3));
	t103 = sin(qJ(3));
	t102 = cos(pkin(6));
	t1 = [0, t114, t102 * t112 + t110, (-t102 * t113 + t109) * t103 - t106 * t114, 0, 0; 0, -t111, -t102 * t109 + t113, (t102 * t110 + t112) * t103 + t106 * t111, 0, 0; 1, t102, -t101 * t107, t101 * t104 * t103 - t102 * t106, 0, 0;];
	Jg_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobig_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:11:34
	% EndTime: 2019-10-10 13:11:35
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (14->9), mult. (39->18), div. (0->0), fcn. (63->8), ass. (0->18)
	t117 = sin(pkin(6));
	t121 = sin(qJ(1));
	t130 = t121 * t117;
	t120 = sin(qJ(2));
	t129 = t121 * t120;
	t123 = cos(qJ(2));
	t128 = t121 * t123;
	t124 = cos(qJ(1));
	t127 = t124 * t117;
	t126 = t124 * t120;
	t125 = t124 * t123;
	t122 = cos(qJ(3));
	t119 = sin(qJ(3));
	t118 = cos(pkin(6));
	t116 = t117 * t120 * t119 - t118 * t122;
	t115 = (-t118 * t129 + t125) * t119 - t122 * t130;
	t114 = (t118 * t126 + t128) * t119 + t122 * t127;
	t1 = [0, t130, t118 * t128 + t126, t115, t115, 0; 0, -t127, -t118 * t125 + t129, t114, t114, 0; 1, t118, -t117 * t123, t116, t116, 0;];
	Jg_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobig_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:11:35
	% EndTime: 2019-10-10 13:11:35
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (14->9), mult. (39->18), div. (0->0), fcn. (63->8), ass. (0->18)
	t158 = sin(pkin(6));
	t162 = sin(qJ(1));
	t171 = t162 * t158;
	t161 = sin(qJ(2));
	t170 = t162 * t161;
	t164 = cos(qJ(2));
	t169 = t162 * t164;
	t165 = cos(qJ(1));
	t168 = t165 * t158;
	t167 = t165 * t161;
	t166 = t165 * t164;
	t163 = cos(qJ(3));
	t160 = sin(qJ(3));
	t159 = cos(pkin(6));
	t157 = t158 * t161 * t160 - t159 * t163;
	t156 = (-t159 * t170 + t166) * t160 - t163 * t171;
	t155 = (t159 * t167 + t169) * t160 + t163 * t168;
	t1 = [0, t171, t159 * t169 + t167, t156, t156, 0; 0, -t168, -t159 * t166 + t170, t155, t155, 0; 1, t159, -t158 * t164, t157, t157, 0;];
	Jg_rot = t1;
else
	Jg_rot=NaN(3,6);
end