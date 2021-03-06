% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RRPRRP7
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d5]';
% 
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 10:39
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RRPRRP7_jacobiR_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP7_jacobiR_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPRRP7_jacobiR_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRPRRP7_jacobiR_rot_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiR_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:39:16
	% EndTime: 2019-10-10 10:39:16
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiR_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:39:16
	% EndTime: 2019-10-10 10:39:16
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
	% StartTime: 2019-10-10 10:39:16
	% EndTime: 2019-10-10 10:39:16
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (7->7), mult. (8->4), div. (0->0), fcn. (20->4), ass. (0->9)
	t10 = sin(qJ(1));
	t9 = sin(qJ(2));
	t16 = t10 * t9;
	t12 = cos(qJ(1));
	t15 = t12 * t9;
	t11 = cos(qJ(2));
	t14 = t10 * t11;
	t13 = t12 * t11;
	t1 = [-t14, -t15, 0, 0, 0, 0; t13, -t16, 0, 0, 0, 0; 0, t11, 0, 0, 0, 0; t16, -t13, 0, 0, 0, 0; -t15, -t14, 0, 0, 0, 0; 0, -t9, 0, 0, 0, 0; t12, 0, 0, 0, 0, 0; t10, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiR_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:39:16
	% EndTime: 2019-10-10 10:39:16
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (4->4), mult. (8->4), div. (0->0), fcn. (20->4), ass. (0->9)
	t38 = sin(qJ(2));
	t39 = sin(qJ(1));
	t44 = t39 * t38;
	t40 = cos(qJ(2));
	t43 = t39 * t40;
	t41 = cos(qJ(1));
	t42 = t41 * t38;
	t37 = t41 * t40;
	t1 = [-t43, -t42, 0, 0, 0, 0; t37, -t44, 0, 0, 0, 0; 0, t40, 0, 0, 0, 0; t41, 0, 0, 0, 0, 0; t39, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; -t44, t37, 0, 0, 0, 0; t42, t43, 0, 0, 0, 0; 0, t38, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiR_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:39:16
	% EndTime: 2019-10-10 10:39:16
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (18->12), mult. (56->8), div. (0->0), fcn. (90->6), ass. (0->13)
	t35 = sin(qJ(4));
	t36 = sin(qJ(2));
	t38 = cos(qJ(4));
	t39 = cos(qJ(2));
	t42 = t39 * t35 - t36 * t38;
	t41 = t36 * t35 + t39 * t38;
	t40 = cos(qJ(1));
	t37 = sin(qJ(1));
	t31 = t41 * t40;
	t30 = t42 * t40;
	t29 = t41 * t37;
	t28 = t42 * t37;
	t1 = [-t29, t30, 0, -t30, 0, 0; t31, t28, 0, -t28, 0, 0; 0, t41, 0, -t41, 0, 0; t28, t31, 0, -t31, 0, 0; -t30, t29, 0, -t29, 0, 0; 0, -t42, 0, t42, 0, 0; -t40, 0, 0, 0, 0, 0; -t37, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiR_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:39:17
	% EndTime: 2019-10-10 10:39:17
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (46->20), mult. (134->24), div. (0->0), fcn. (202->8), ass. (0->25)
	t115 = sin(qJ(4));
	t118 = cos(qJ(2));
	t132 = sin(qJ(2));
	t133 = cos(qJ(4));
	t109 = -t118 * t115 + t132 * t133;
	t108 = t132 * t115 + t118 * t133;
	t116 = sin(qJ(1));
	t104 = t109 * t116;
	t114 = sin(qJ(5));
	t131 = t104 * t114;
	t117 = cos(qJ(5));
	t130 = t104 * t117;
	t119 = cos(qJ(1));
	t107 = t109 * t119;
	t129 = t107 * t114;
	t128 = t107 * t117;
	t127 = t108 * t114;
	t126 = t108 * t117;
	t105 = t108 * t116;
	t121 = -t105 * t117 - t119 * t114;
	t120 = t105 * t114 - t119 * t117;
	t106 = t108 * t119;
	t103 = t106 * t117 - t116 * t114;
	t102 = -t106 * t114 - t116 * t117;
	t1 = [t121, -t128, 0, t128, t102, 0; t103, -t130, 0, t130, -t120, 0; 0, t126, 0, -t126, -t109 * t114, 0; t120, t129, 0, -t129, -t103, 0; t102, t131, 0, -t131, t121, 0; 0, -t127, 0, t127, -t109 * t117, 0; t104, -t106, 0, t106, 0, 0; -t107, -t105, 0, t105, 0, 0; 0, -t109, 0, t109, 0, 0;];
	JR_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiR_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:39:17
	% EndTime: 2019-10-10 10:39:17
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (39->19), mult. (134->24), div. (0->0), fcn. (202->8), ass. (0->25)
	t139 = sin(qJ(4));
	t142 = cos(qJ(2));
	t156 = sin(qJ(2));
	t157 = cos(qJ(4));
	t132 = -t142 * t139 + t156 * t157;
	t131 = t156 * t139 + t142 * t157;
	t140 = sin(qJ(1));
	t127 = t132 * t140;
	t138 = sin(qJ(5));
	t155 = t127 * t138;
	t141 = cos(qJ(5));
	t154 = t127 * t141;
	t143 = cos(qJ(1));
	t130 = t132 * t143;
	t153 = t130 * t138;
	t152 = t130 * t141;
	t151 = t131 * t138;
	t150 = t131 * t141;
	t128 = t131 * t140;
	t146 = -t128 * t138 + t143 * t141;
	t144 = t128 * t141 + t143 * t138;
	t129 = t131 * t143;
	t126 = t129 * t141 - t140 * t138;
	t125 = t129 * t138 + t140 * t141;
	t1 = [-t144, -t152, 0, t152, -t125, 0; t126, -t154, 0, t154, t146, 0; 0, t150, 0, -t150, -t132 * t138, 0; t127, -t129, 0, t129, 0, 0; -t130, -t128, 0, t128, 0, 0; 0, -t132, 0, t132, 0, 0; t146, -t153, 0, t153, t126, 0; t125, -t155, 0, t155, t144, 0; 0, t151, 0, -t151, t132 * t141, 0;];
	JR_rot = t1;
else
	JR_rot=NaN(9,6);
end