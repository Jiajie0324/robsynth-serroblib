% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S5PRPRR5
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
%   Wie in S5PRPRR5_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d4,d5,theta1,theta3]';
% 
% Output:
% Ja_rot [3x5]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-24 10:27
% Revision: 5d02717ba55fba3c5445be8d9f6bf09c2cd6665f (2019-10-14)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S5PRPRR5_jacobia_rot_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRR5_jacobia_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5PRPRR5_jacobia_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRPRR5_jacobia_rot_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:27:10
	% EndTime: 2019-10-24 10:27:10
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:27:10
	% EndTime: 2019-10-24 10:27:10
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:27:10
	% EndTime: 2019-10-24 10:27:10
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:27:10
	% EndTime: 2019-10-24 10:27:10
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (53->14), mult. (108->32), div. (27->8), fcn. (157->9), ass. (0->21)
	t29 = cos(qJ(2));
	t25 = sin(pkin(8));
	t28 = sin(qJ(2));
	t31 = t25 * t28;
	t20 = atan2(-t31, -t29);
	t18 = sin(t20);
	t33 = t18 * t29;
	t22 = t28 ^ 2;
	t32 = t22 / t29 ^ 2;
	t27 = cos(pkin(8));
	t30 = t27 * t29;
	t26 = cos(pkin(9));
	t24 = sin(pkin(9));
	t19 = cos(t20);
	t17 = t25 * t24 + t26 * t30;
	t16 = t24 * t30 - t25 * t26;
	t15 = 0.1e1 / t17 ^ 2;
	t14 = (0.1e1 + t32) * t25 / (t25 ^ 2 * t32 + 0.1e1);
	t12 = -t18 * t31 - t19 * t29;
	t11 = 0.1e1 / t12 ^ 2;
	t1 = [0, t14, 0, 0, 0; 0, (t29 / t12 - (-t25 * t33 + t19 * t28 + (-t19 * t31 + t33) * t14) * t28 * t11) * t27 / (t27 ^ 2 * t22 * t11 + 0.1e1), 0, 0, 0; 0, (-t24 / t17 + t26 * t16 * t15) * t28 * t27 / (t16 ^ 2 * t15 + 0.1e1), 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:27:10
	% EndTime: 2019-10-24 10:27:10
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (93->15), mult. (135->34), div. (32->8), fcn. (192->9), ass. (0->24)
	t35 = cos(qJ(2));
	t32 = sin(pkin(8));
	t34 = sin(qJ(2));
	t38 = t32 * t34;
	t25 = atan2(-t38, -t35);
	t23 = sin(t25);
	t40 = t23 * t35;
	t30 = t34 ^ 2;
	t39 = t30 / t35 ^ 2;
	t33 = cos(pkin(8));
	t37 = t33 * t35;
	t29 = pkin(9) + qJ(4);
	t27 = sin(t29);
	t28 = cos(t29);
	t22 = t32 * t27 + t28 * t37;
	t20 = 0.1e1 / t22 ^ 2;
	t21 = t27 * t37 - t32 * t28;
	t36 = t21 ^ 2 * t20 + 0.1e1;
	t24 = cos(t25);
	t19 = (0.1e1 + t39) * t32 / (t32 ^ 2 * t39 + 0.1e1);
	t18 = -t23 * t38 - t24 * t35;
	t17 = 0.1e1 / t18 ^ 2;
	t16 = 0.1e1 / t36;
	t1 = [0, t19, 0, 0, 0; 0, (t35 / t18 - (-t32 * t40 + t24 * t34 + (-t24 * t38 + t40) * t19) * t34 * t17) * t33 / (t33 ^ 2 * t30 * t17 + 0.1e1), 0, 0, 0; 0, (-t27 / t22 + t28 * t21 * t20) * t34 * t33 * t16, 0, t36 * t16, 0;];
	Ja_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-24 10:27:10
	% EndTime: 2019-10-24 10:27:10
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (161->15), mult. (162->34), div. (37->8), fcn. (227->9), ass. (0->25)
	t46 = cos(qJ(2));
	t43 = sin(pkin(8));
	t45 = sin(qJ(2));
	t49 = t43 * t45;
	t36 = atan2(-t49, -t46);
	t34 = sin(t36);
	t51 = t34 * t46;
	t41 = t45 ^ 2;
	t50 = t41 / t46 ^ 2;
	t44 = cos(pkin(8));
	t48 = t44 * t46;
	t40 = pkin(9) + qJ(4) + qJ(5);
	t38 = sin(t40);
	t39 = cos(t40);
	t33 = t43 * t38 + t39 * t48;
	t31 = 0.1e1 / t33 ^ 2;
	t32 = t38 * t48 - t43 * t39;
	t47 = t32 ^ 2 * t31 + 0.1e1;
	t35 = cos(t36);
	t30 = (0.1e1 + t50) * t43 / (t43 ^ 2 * t50 + 0.1e1);
	t29 = -t34 * t49 - t35 * t46;
	t28 = 0.1e1 / t29 ^ 2;
	t26 = 0.1e1 / t47;
	t25 = t47 * t26;
	t1 = [0, t30, 0, 0, 0; 0, (t46 / t29 - (-t43 * t51 + t35 * t45 + (-t35 * t49 + t51) * t30) * t45 * t28) * t44 / (t44 ^ 2 * t41 * t28 + 0.1e1), 0, 0, 0; 0, (-t38 / t33 + t39 * t32 * t31) * t45 * t44 * t26, 0, t25, t25;];
	Ja_rot = t1;
else
	Ja_rot=NaN(3,5);
end