% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S5RRRRR3
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
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a3,a4,a5,d1,d4]';
% 
% Output:
% JR_rot [9x5]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 21:04
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S5RRRRR3_jacobiR_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(5,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR3_jacobiR_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RRRRR3_jacobiR_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S5RRRRR3_jacobiR_rot_sym_varpar: pkin has to be [5x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiR_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:04:40
	% EndTime: 2019-10-09 21:04:40
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiR_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:04:40
	% EndTime: 2019-10-09 21:04:40
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (3->3), mult. (0->0), div. (0->0), fcn. (4->2), ass. (0->3)
	t9 = cos(qJ(1));
	t8 = sin(qJ(1));
	t1 = [-t8, 0, 0, 0, 0; t9, 0, 0, 0, 0; 0, 0, 0, 0, 0; -t9, 0, 0, 0, 0; -t8, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiR_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:04:40
	% EndTime: 2019-10-09 21:04:40
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (7->7), mult. (8->4), div. (0->0), fcn. (20->4), ass. (0->9)
	t7 = sin(qJ(2));
	t8 = sin(qJ(1));
	t14 = t8 * t7;
	t9 = cos(qJ(2));
	t13 = t8 * t9;
	t10 = cos(qJ(1));
	t12 = t10 * t7;
	t11 = t10 * t9;
	t1 = [-t13, -t12, 0, 0, 0; t11, -t14, 0, 0, 0; 0, t9, 0, 0, 0; t14, -t11, 0, 0, 0; -t12, -t13, 0, 0, 0; 0, -t7, 0, 0, 0; t10, 0, 0, 0, 0; t8, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiR_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:04:40
	% EndTime: 2019-10-09 21:04:40
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (28->13), mult. (12->4), div. (0->0), fcn. (30->4), ass. (0->10)
	t19 = qJ(2) + qJ(3);
	t17 = sin(t19);
	t20 = sin(qJ(1));
	t25 = t20 * t17;
	t18 = cos(t19);
	t24 = t20 * t18;
	t21 = cos(qJ(1));
	t23 = t21 * t17;
	t22 = t21 * t18;
	t1 = [-t24, -t23, -t23, 0, 0; t22, -t25, -t25, 0, 0; 0, t18, t18, 0, 0; t25, -t22, -t22, 0, 0; -t23, -t24, -t24, 0, 0; 0, -t17, -t17, 0, 0; t21, 0, 0, 0, 0; t20, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiR_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:04:40
	% EndTime: 2019-10-09 21:04:41
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (47->16), mult. (52->20), div. (0->0), fcn. (90->6), ass. (0->24)
	t100 = sin(qJ(4));
	t99 = qJ(2) + qJ(3);
	t98 = cos(t99);
	t110 = t98 * t100;
	t101 = sin(qJ(1));
	t109 = t101 * t100;
	t102 = cos(qJ(4));
	t108 = t101 * t102;
	t103 = cos(qJ(1));
	t107 = t103 * t100;
	t106 = t103 * t102;
	t97 = sin(t99);
	t105 = t97 * t108;
	t104 = t97 * t106;
	t96 = t103 * t98;
	t95 = t98 * t102;
	t94 = t101 * t98;
	t93 = t97 * t107;
	t92 = t97 * t109;
	t91 = t106 * t98 + t109;
	t90 = -t107 * t98 + t108;
	t89 = -t108 * t98 + t107;
	t88 = t109 * t98 + t106;
	t1 = [t89, -t104, -t104, t90, 0; t91, -t105, -t105, -t88, 0; 0, t95, t95, -t97 * t100, 0; t88, t93, t93, -t91, 0; t90, t92, t92, t89, 0; 0, -t110, -t110, -t97 * t102, 0; -t101 * t97, t96, t96, 0, 0; t103 * t97, t94, t94, 0, 0; 0, t97, t97, 0, 0;];
	JR_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiR_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:04:40
	% EndTime: 2019-10-09 21:04:41
	% DurationCPUTime: 0.13s
	% Computational Cost: add. (99->21), mult. (66->20), div. (0->0), fcn. (114->6), ass. (0->27)
	t115 = qJ(4) + qJ(5);
	t111 = sin(t115);
	t116 = qJ(2) + qJ(3);
	t112 = sin(t116);
	t127 = t112 * t111;
	t113 = cos(t115);
	t126 = t112 * t113;
	t114 = cos(t116);
	t125 = t114 * t111;
	t117 = sin(qJ(1));
	t124 = t117 * t112;
	t123 = t117 * t113;
	t109 = t117 * t114;
	t118 = cos(qJ(1));
	t122 = t118 * t112;
	t121 = t118 * t113;
	t110 = t118 * t114;
	t120 = t112 * t123;
	t119 = t112 * t121;
	t108 = t114 * t113;
	t107 = t111 * t122;
	t106 = t111 * t124;
	t105 = t110 * t113 + t111 * t117;
	t104 = -t110 * t111 + t123;
	t103 = -t109 * t113 + t111 * t118;
	t102 = t109 * t111 + t121;
	t1 = [t103, -t119, -t119, t104, t104; t105, -t120, -t120, -t102, -t102; 0, t108, t108, -t127, -t127; t102, t107, t107, -t105, -t105; t104, t106, t106, t103, t103; 0, -t125, -t125, -t126, -t126; -t124, t110, t110, 0, 0; t122, t109, t109, 0, 0; 0, t112, t112, 0, 0;];
	JR_rot = t1;
else
	JR_rot=NaN(9,5);
end