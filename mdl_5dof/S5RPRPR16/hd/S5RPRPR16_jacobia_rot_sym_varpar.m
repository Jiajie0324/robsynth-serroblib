% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S5RPRPR16
% Use Code from Maple symbolic Code Generation
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% Zeitableitung der Winkeldarstellung des Endeffektors in Basis-Koordinaten
% 
% Winkeldarstellung: Euler-XYZ-Winkel, rotx(alpha)*roty(beta)*rotz(gamma)
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt.
%   Wie in S5RPRPR16_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d5]';
% 
% Output:
% Ja_rot [3x5]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 18:39
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S5RPRPR16_jacobia_rot_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPR16_jacobia_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RPRPR16_jacobia_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RPRPR16_jacobia_rot_sym_varpar: pkin has to be [7x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 18:39:52
	% EndTime: 2019-12-31 18:39:52
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 18:39:52
	% EndTime: 2019-12-31 18:39:52
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (3->0), mult. (6->0), div. (5->0), fcn. (6->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 1, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 18:39:52
	% EndTime: 2019-12-31 18:39:52
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 18:39:52
	% EndTime: 2019-12-31 18:39:52
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 18:39:52
	% EndTime: 2019-12-31 18:39:52
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (58->14), mult. (149->39), div. (43->9), fcn. (227->7), ass. (0->27)
	t27 = sin(qJ(1));
	t23 = t27 ^ 2;
	t26 = sin(qJ(3));
	t28 = cos(qJ(3));
	t29 = cos(qJ(1));
	t32 = t29 * t28;
	t18 = atan2(-t32, t26);
	t16 = sin(t18);
	t17 = cos(t18);
	t14 = -t16 * t32 + t17 * t26;
	t13 = 0.1e1 / t14 ^ 2;
	t38 = t13 * t28;
	t37 = t16 * t26;
	t24 = t28 ^ 2;
	t30 = t26 ^ 2;
	t36 = 0.1e1 / t30 * t24;
	t31 = t29 ^ 2;
	t35 = t23 / t31;
	t34 = t27 * t28;
	t20 = 0.1e1 / (t31 * t36 + 0.1e1);
	t33 = t29 * t20;
	t21 = 0.1e1 / t26;
	t19 = 0.1e1 / (t30 * t35 + 0.1e1);
	t15 = (0.1e1 + t36) * t33;
	t12 = 0.1e1 / t14;
	t11 = 0.1e1 / (t23 * t24 * t13 + 0.1e1);
	t1 = [t21 * t20 * t34, 0, t15, 0, 0; (-t12 * t32 + (-t17 * t21 * t24 * t33 + (-t20 + 0.1e1) * t28 * t16) * t23 * t38) * t11, 0, (t26 * t12 + (t29 * t37 + t17 * t28 + (-t17 * t32 - t37) * t15) * t38) * t27 * t11, 0, 0; (0.1e1 + t35) * t26 * t19, 0, 0.1e1 / t29 * t19 * t34, 0, 0;];
	Ja_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 18:39:52
	% EndTime: 2019-12-31 18:39:52
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (64->19), mult. (224->55), div. (52->9), fcn. (332->9), ass. (0->34)
	t40 = cos(qJ(3));
	t37 = sin(qJ(3));
	t41 = cos(qJ(1));
	t44 = t41 * t37;
	t32 = atan2(t44, t40);
	t29 = sin(t32);
	t30 = cos(t32);
	t22 = t29 * t44 + t30 * t40;
	t21 = 0.1e1 / t22 ^ 2;
	t38 = sin(qJ(1));
	t52 = t21 * t38 ^ 2;
	t36 = sin(qJ(5));
	t39 = cos(qJ(5));
	t43 = t41 * t39;
	t47 = t38 * t40;
	t28 = -t36 * t47 + t43;
	t26 = 0.1e1 / t28 ^ 2;
	t45 = t41 * t36;
	t27 = t39 * t47 + t45;
	t51 = t26 * t27;
	t50 = t29 * t40;
	t33 = t37 ^ 2;
	t49 = t33 / t40 ^ 2;
	t48 = t37 * t38;
	t31 = 0.1e1 / (t41 ^ 2 * t49 + 0.1e1);
	t46 = t41 * t31;
	t42 = t27 ^ 2 * t26 + 0.1e1;
	t34 = 0.1e1 / t40;
	t25 = 0.1e1 / t28;
	t24 = (0.1e1 + t49) * t46;
	t23 = 0.1e1 / t42;
	t20 = 0.1e1 / t22;
	t19 = 0.1e1 / (t33 * t52 + 0.1e1);
	t1 = [-t34 * t31 * t48, 0, t24, 0, 0; (t20 * t44 - (-t30 * t33 * t34 * t46 + (t31 - 0.1e1) * t37 * t29) * t37 * t52) * t19, 0, (t40 * t20 - (t41 * t50 - t30 * t37 + (t30 * t44 - t50) * t24) * t37 * t21) * t38 * t19, 0, 0; ((-t38 * t36 + t40 * t43) * t25 - (-t38 * t39 - t40 * t45) * t51) * t23, 0, (-t25 * t39 - t36 * t51) * t23 * t48, 0, t42 * t23;];
	Ja_rot = t1;
else
	Ja_rot=NaN(3,5);
end