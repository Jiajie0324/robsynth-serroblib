% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S5RRRPR3
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
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d5,theta4]';
% 
% Output:
% JR_rot [9x5]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2020-01-03 12:10
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S5RRRPR3_jacobiR_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPR3_jacobiR_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RRRPR3_jacobiR_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRPR3_jacobiR_rot_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiR_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2020-01-03 12:10:13
	% EndTime: 2020-01-03 12:10:13
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiR_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2020-01-03 12:10:13
	% EndTime: 2020-01-03 12:10:13
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (1->1), mult. (0->0), div. (0->0), fcn. (4->2), ass. (0->3)
	t4 = cos(qJ(1));
	t3 = sin(qJ(1));
	t1 = [0, 0, 0, 0, 0; t4, 0, 0, 0, 0; t3, 0, 0, 0, 0; 0, 0, 0, 0, 0; -t3, 0, 0, 0, 0; t4, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiR_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2020-01-03 12:10:13
	% EndTime: 2020-01-03 12:10:13
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (10->3), mult. (0->0), div. (0->0), fcn. (8->2), ass. (0->4)
	t11 = qJ(1) + qJ(2);
	t10 = cos(t11);
	t9 = sin(t11);
	t1 = [0, 0, 0, 0, 0; t10, t10, 0, 0, 0; t9, t9, 0, 0, 0; 0, 0, 0, 0, 0; -t9, -t9, 0, 0, 0; t10, t10, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiR_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2020-01-03 12:10:13
	% EndTime: 2020-01-03 12:10:13
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (25->10), mult. (12->4), div. (0->0), fcn. (30->4), ass. (0->10)
	t37 = qJ(1) + qJ(2);
	t35 = sin(t37);
	t38 = sin(qJ(3));
	t41 = t35 * t38;
	t36 = cos(t37);
	t40 = t36 * t38;
	t39 = cos(qJ(3));
	t34 = t36 * t39;
	t33 = t35 * t39;
	t1 = [0, 0, t39, 0, 0; t34, t34, -t41, 0, 0; t33, t33, t40, 0, 0; 0, 0, -t38, 0, 0; -t40, -t40, -t33, 0, 0; -t41, -t41, t34, 0, 0; 0, 0, 0, 0, 0; t35, t35, 0, 0, 0; -t36, -t36, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiR_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2020-01-03 12:10:13
	% EndTime: 2020-01-03 12:10:13
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (39->11), mult. (12->4), div. (0->0), fcn. (30->4), ass. (0->11)
	t46 = qJ(3) + pkin(9);
	t42 = sin(t46);
	t47 = qJ(1) + qJ(2);
	t44 = sin(t47);
	t49 = t44 * t42;
	t45 = cos(t47);
	t48 = t45 * t42;
	t43 = cos(t46);
	t41 = t45 * t43;
	t40 = t44 * t43;
	t1 = [0, 0, t43, 0, 0; t41, t41, -t49, 0, 0; t40, t40, t48, 0, 0; 0, 0, -t42, 0, 0; -t48, -t48, -t40, 0, 0; -t49, -t49, t41, 0, 0; 0, 0, 0, 0, 0; t44, t44, 0, 0, 0; -t45, -t45, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiR_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2020-01-03 12:10:13
	% EndTime: 2020-01-03 12:10:13
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (72->14), mult. (16->4), div. (0->0), fcn. (40->4), ass. (0->11)
	t54 = qJ(3) + pkin(9) + qJ(5);
	t52 = sin(t54);
	t57 = qJ(1) + qJ(2);
	t55 = sin(t57);
	t58 = t55 * t52;
	t56 = cos(t57);
	t53 = cos(t54);
	t51 = t56 * t53;
	t50 = t56 * t52;
	t49 = t55 * t53;
	t1 = [0, 0, t53, 0, t53; t51, t51, -t58, 0, -t58; t49, t49, t50, 0, t50; 0, 0, -t52, 0, -t52; -t50, -t50, -t49, 0, -t49; -t58, -t58, t51, 0, t51; 0, 0, 0, 0, 0; t55, t55, 0, 0, 0; -t56, -t56, 0, 0, 0;];
	JR_rot = t1;
else
	JR_rot=NaN(9,5);
end