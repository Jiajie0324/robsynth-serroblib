% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S5PRRRR4
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d3,d4,d5,theta1]';
% 
% Output:
% JR_rot [9x5]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 17:08
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S5PRRRR4_jacobiR_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRR4_jacobiR_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5PRRRR4_jacobiR_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRRRR4_jacobiR_rot_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiR_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 17:08:31
	% EndTime: 2019-12-05 17:08:31
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiR_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 17:08:31
	% EndTime: 2019-12-05 17:08:31
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiR_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 17:08:31
	% EndTime: 2019-12-05 17:08:31
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (7->4), mult. (0->0), div. (0->0), fcn. (4->2), ass. (0->4)
	t12 = pkin(9) + qJ(2);
	t11 = cos(t12);
	t10 = sin(t12);
	t1 = [0, -t10, 0, 0, 0; 0, t11, 0, 0, 0; 0, 0, 0, 0, 0; 0, -t11, 0, 0, 0; 0, -t10, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiR_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 17:08:31
	% EndTime: 2019-12-05 17:08:31
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (22->7), mult. (0->0), div. (0->0), fcn. (8->2), ass. (0->4)
	t17 = pkin(9) + qJ(2) + qJ(3);
	t16 = cos(t17);
	t15 = sin(t17);
	t1 = [0, -t15, -t15, 0, 0; 0, t16, t16, 0, 0; 0, 0, 0, 0, 0; 0, -t16, -t16, 0, 0; 0, -t15, -t15, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiR_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 17:08:31
	% EndTime: 2019-12-05 17:08:31
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (41->10), mult. (12->4), div. (0->0), fcn. (30->4), ass. (0->10)
	t27 = pkin(9) + qJ(2) + qJ(3);
	t25 = sin(t27);
	t29 = cos(qJ(4));
	t31 = t25 * t29;
	t26 = cos(t27);
	t28 = sin(qJ(4));
	t30 = t26 * t28;
	t24 = t26 * t29;
	t23 = t25 * t28;
	t1 = [0, -t31, -t31, -t30, 0; 0, t24, t24, -t23, 0; 0, 0, 0, t29, 0; 0, t23, t23, -t24, 0; 0, -t30, -t30, -t31, 0; 0, 0, 0, -t28, 0; 0, t26, t26, 0, 0; 0, t25, t25, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiR_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 17:08:31
	% EndTime: 2019-12-05 17:08:31
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (74->16), mult. (16->4), div. (0->0), fcn. (40->4), ass. (0->11)
	t34 = pkin(9) + qJ(2) + qJ(3);
	t32 = sin(t34);
	t37 = qJ(4) + qJ(5);
	t36 = cos(t37);
	t39 = t32 * t36;
	t33 = cos(t34);
	t35 = sin(t37);
	t38 = t33 * t35;
	t31 = t33 * t36;
	t30 = t32 * t35;
	t1 = [0, -t39, -t39, -t38, -t38; 0, t31, t31, -t30, -t30; 0, 0, 0, t36, t36; 0, t30, t30, -t31, -t31; 0, -t38, -t38, -t39, -t39; 0, 0, 0, -t35, -t35; 0, t33, t33, 0, 0; 0, t32, t32, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
else
	JR_rot=NaN(9,5);
end