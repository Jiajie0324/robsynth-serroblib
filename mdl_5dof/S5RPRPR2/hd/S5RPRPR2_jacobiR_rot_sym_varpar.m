% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S5RPRPR2
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
%   pkin=[a2,a3,a4,a5,d1,d3,d5,theta2,theta4]';
% 
% Output:
% JR_rot [9x5]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2020-01-03 11:34
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S5RPRPR2_jacobiR_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPR2_jacobiR_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RPRPR2_jacobiR_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRPR2_jacobiR_rot_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiR_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2020-01-03 11:34:42
	% EndTime: 2020-01-03 11:34:42
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiR_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2020-01-03 11:34:42
	% EndTime: 2020-01-03 11:34:42
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (1->1), mult. (0->0), div. (0->0), fcn. (4->2), ass. (0->3)
	t4 = cos(qJ(1));
	t3 = sin(qJ(1));
	t1 = [0, 0, 0, 0, 0; t4, 0, 0, 0, 0; t3, 0, 0, 0, 0; 0, 0, 0, 0, 0; -t3, 0, 0, 0, 0; t4, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiR_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2020-01-03 11:34:42
	% EndTime: 2020-01-03 11:34:42
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (5->2), mult. (0->0), div. (0->0), fcn. (4->2), ass. (0->4)
	t6 = qJ(1) + pkin(8);
	t5 = cos(t6);
	t4 = sin(t6);
	t1 = [0, 0, 0, 0, 0; t5, 0, 0, 0, 0; t4, 0, 0, 0, 0; 0, 0, 0, 0, 0; -t4, 0, 0, 0, 0; t5, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiR_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2020-01-03 11:34:42
	% EndTime: 2020-01-03 11:34:42
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (18->3), mult. (0->0), div. (0->0), fcn. (8->2), ass. (0->4)
	t12 = qJ(1) + pkin(8) + qJ(3);
	t11 = cos(t12);
	t10 = sin(t12);
	t1 = [0, 0, 0, 0, 0; t11, 0, t11, 0, 0; t10, 0, t10, 0, 0; 0, 0, 0, 0, 0; -t10, 0, -t10, 0, 0; t11, 0, t11, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiR_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2020-01-03 11:34:42
	% EndTime: 2020-01-03 11:34:42
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (30->7), mult. (8->4), div. (0->0), fcn. (20->4), ass. (0->10)
	t30 = qJ(1) + pkin(8) + qJ(3);
	t28 = sin(t30);
	t31 = sin(pkin(9));
	t34 = t28 * t31;
	t29 = cos(t30);
	t33 = t29 * t31;
	t32 = cos(pkin(9));
	t27 = t29 * t32;
	t26 = t28 * t32;
	t1 = [0, 0, 0, 0, 0; t27, 0, t27, 0, 0; t26, 0, t26, 0, 0; 0, 0, 0, 0, 0; -t33, 0, -t33, 0, 0; -t34, 0, -t34, 0, 0; 0, 0, 0, 0, 0; t28, 0, t28, 0, 0; -t29, 0, -t29, 0, 0;];
	JR_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiR_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2020-01-03 11:34:42
	% EndTime: 2020-01-03 11:34:42
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (55->11), mult. (12->4), div. (0->0), fcn. (30->4), ass. (0->11)
	t44 = qJ(1) + pkin(8) + qJ(3);
	t40 = sin(t44);
	t45 = pkin(9) + qJ(5);
	t42 = sin(t45);
	t47 = t40 * t42;
	t41 = cos(t44);
	t46 = t41 * t42;
	t43 = cos(t45);
	t39 = t41 * t43;
	t38 = t40 * t43;
	t1 = [0, 0, 0, 0, t43; t39, 0, t39, 0, -t47; t38, 0, t38, 0, t46; 0, 0, 0, 0, -t42; -t46, 0, -t46, 0, -t38; -t47, 0, -t47, 0, t39; 0, 0, 0, 0, 0; t40, 0, t40, 0, 0; -t41, 0, -t41, 0, 0;];
	JR_rot = t1;
else
	JR_rot=NaN(9,5);
end