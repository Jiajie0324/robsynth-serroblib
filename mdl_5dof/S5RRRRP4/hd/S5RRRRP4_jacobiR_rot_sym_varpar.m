% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S5RRRRP4
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
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4]';
% 
% Output:
% JR_rot [9x5]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 21:51
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S5RRRRP4_jacobiR_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRP4_jacobiR_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RRRRP4_jacobiR_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRRRP4_jacobiR_rot_sym_varpar: pkin has to be [8x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiR_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 21:51:58
	% EndTime: 2019-12-31 21:51:58
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiR_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 21:51:58
	% EndTime: 2019-12-31 21:51:58
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
	% StartTime: 2019-12-31 21:51:58
	% EndTime: 2019-12-31 21:51:58
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
	% StartTime: 2019-12-31 21:51:58
	% EndTime: 2019-12-31 21:51:58
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (25->10), mult. (12->4), div. (0->0), fcn. (30->4), ass. (0->10)
	t26 = qJ(1) + qJ(2);
	t24 = sin(t26);
	t28 = cos(qJ(3));
	t30 = t24 * t28;
	t25 = cos(t26);
	t27 = sin(qJ(3));
	t29 = t25 * t27;
	t23 = t25 * t28;
	t22 = t24 * t27;
	t1 = [-t30, -t30, -t29, 0, 0; t23, t23, -t22, 0, 0; 0, 0, t28, 0, 0; t22, t22, -t23, 0, 0; -t29, -t29, -t30, 0, 0; 0, 0, -t27, 0, 0; t25, t25, 0, 0, 0; t24, t24, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiR_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 21:51:58
	% EndTime: 2019-12-31 21:51:58
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (54->16), mult. (16->4), div. (0->0), fcn. (40->4), ass. (0->11)
	t36 = qJ(1) + qJ(2);
	t32 = sin(t36);
	t35 = qJ(3) + qJ(4);
	t33 = cos(t35);
	t38 = t32 * t33;
	t31 = sin(t35);
	t34 = cos(t36);
	t37 = t34 * t31;
	t30 = t34 * t33;
	t29 = t32 * t31;
	t1 = [-t38, -t38, -t37, -t37, 0; t30, t30, -t29, -t29, 0; 0, 0, t33, t33, 0; t29, t29, -t30, -t30, 0; -t37, -t37, -t38, -t38, 0; 0, 0, -t31, -t31, 0; t34, t34, 0, 0, 0; t32, t32, 0, 0, 0; 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiR_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 21:51:58
	% EndTime: 2019-12-31 21:51:58
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (48->10), mult. (16->4), div. (0->0), fcn. (40->4), ass. (0->11)
	t84 = qJ(3) + qJ(4);
	t80 = sin(t84);
	t85 = qJ(1) + qJ(2);
	t81 = sin(t85);
	t86 = t81 * t80;
	t83 = cos(t85);
	t82 = cos(t84);
	t79 = t83 * t82;
	t78 = t83 * t80;
	t77 = t81 * t82;
	t1 = [-t77, -t77, -t78, -t78, 0; t79, t79, -t86, -t86, 0; 0, 0, t82, t82, 0; t83, t83, 0, 0, 0; t81, t81, 0, 0, 0; 0, 0, 0, 0, 0; -t86, -t86, t79, t79, 0; t78, t78, t77, t77, 0; 0, 0, t80, t80, 0;];
	JR_rot = t1;
else
	JR_rot=NaN(9,5);
end