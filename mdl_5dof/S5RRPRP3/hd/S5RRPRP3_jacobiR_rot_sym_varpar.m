% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S5RRPRP3
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
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d4,theta3]';
% 
% Output:
% JR_rot [9x5]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 19:51
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S5RRPRP3_jacobiR_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRP3_jacobiR_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RRPRP3_jacobiR_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRPRP3_jacobiR_rot_sym_varpar: pkin has to be [8x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiR_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 19:51:48
	% EndTime: 2019-12-31 19:51:48
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiR_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 19:51:49
	% EndTime: 2019-12-31 19:51:49
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
	% StartTime: 2019-12-31 19:51:49
	% EndTime: 2019-12-31 19:51:49
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (14->7), mult. (0->0), div. (0->0), fcn. (8->2), ass. (0->4)
	t16 = qJ(1) + qJ(2);
	t15 = cos(t16);
	t14 = sin(t16);
	t1 = [-t14, -t14, 0, 0, 0; t15, t15, 0, 0, 0; 0, 0, 0, 0, 0; -t15, -t15, 0, 0, 0; -t14, -t14, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiR_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 19:51:48
	% EndTime: 2019-12-31 19:51:48
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (16->5), mult. (8->4), div. (0->0), fcn. (20->4), ass. (0->10)
	t23 = qJ(1) + qJ(2);
	t21 = sin(t23);
	t25 = cos(pkin(8));
	t27 = t21 * t25;
	t22 = cos(t23);
	t24 = sin(pkin(8));
	t26 = t22 * t24;
	t20 = t22 * t25;
	t19 = t21 * t24;
	t1 = [-t27, -t27, 0, 0, 0; t20, t20, 0, 0, 0; 0, 0, 0, 0, 0; t19, t19, 0, 0, 0; -t26, -t26, 0, 0, 0; 0, 0, 0, 0, 0; t22, t22, 0, 0, 0; t21, t21, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiR_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 19:51:49
	% EndTime: 2019-12-31 19:51:49
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (39->11), mult. (12->4), div. (0->0), fcn. (30->4), ass. (0->11)
	t29 = pkin(8) + qJ(4);
	t26 = cos(t29);
	t30 = qJ(1) + qJ(2);
	t27 = sin(t30);
	t32 = t27 * t26;
	t25 = sin(t29);
	t28 = cos(t30);
	t31 = t28 * t25;
	t24 = t28 * t26;
	t23 = t27 * t25;
	t1 = [-t32, -t32, 0, -t31, 0; t24, t24, 0, -t23, 0; 0, 0, 0, t26, 0; t23, t23, 0, -t24, 0; -t31, -t31, 0, -t32, 0; 0, 0, 0, -t25, 0; t28, t28, 0, 0, 0; t27, t27, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiR_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 19:51:49
	% EndTime: 2019-12-31 19:51:49
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (36->8), mult. (12->4), div. (0->0), fcn. (30->4), ass. (0->11)
	t64 = pkin(8) + qJ(4);
	t60 = sin(t64);
	t65 = qJ(1) + qJ(2);
	t62 = sin(t65);
	t67 = t62 * t60;
	t61 = cos(t64);
	t66 = t62 * t61;
	t63 = cos(t65);
	t59 = t63 * t61;
	t58 = t63 * t60;
	t1 = [-t66, -t66, 0, -t58, 0; t59, t59, 0, -t67, 0; 0, 0, 0, t61, 0; t63, t63, 0, 0, 0; t62, t62, 0, 0, 0; 0, 0, 0, 0, 0; -t67, -t67, 0, t59, 0; t58, t58, 0, t66, 0; 0, 0, 0, t60, 0;];
	JR_rot = t1;
else
	JR_rot=NaN(9,5);
end