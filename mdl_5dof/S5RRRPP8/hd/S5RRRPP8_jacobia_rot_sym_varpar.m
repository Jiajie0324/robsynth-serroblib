% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S5RRRPP8
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
%   Wie in S5RRRPP8_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3]';
% 
% Output:
% Ja_rot [3x5]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 19:54
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S5RRRPP8_jacobia_rot_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPP8_jacobia_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RRRPP8_jacobia_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RRRPP8_jacobia_rot_sym_varpar: pkin has to be [7x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 19:53:57
	% EndTime: 2019-12-29 19:53:57
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 19:53:56
	% EndTime: 2019-12-29 19:53:57
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (3->0), mult. (6->0), div. (5->0), fcn. (6->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 1, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 19:53:57
	% EndTime: 2019-12-29 19:53:57
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 19:53:57
	% EndTime: 2019-12-29 19:53:57
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (109->20), mult. (224->55), div. (52->9), fcn. (332->9), ass. (0->33)
	t40 = cos(qJ(2));
	t37 = sin(qJ(2));
	t38 = sin(qJ(1));
	t46 = t38 * t37;
	t31 = atan2(-t46, -t40);
	t29 = sin(t31);
	t30 = cos(t31);
	t22 = -t29 * t46 - t30 * t40;
	t21 = 0.1e1 / t22 ^ 2;
	t41 = cos(qJ(1));
	t51 = t21 * t41 ^ 2;
	t36 = sin(qJ(3));
	t39 = cos(qJ(3));
	t43 = t41 * t39;
	t28 = t38 * t36 + t40 * t43;
	t26 = 0.1e1 / t28 ^ 2;
	t44 = t41 * t36;
	t27 = -t38 * t39 + t40 * t44;
	t50 = t26 * t27;
	t33 = t37 ^ 2;
	t49 = t33 / t40 ^ 2;
	t48 = t37 * t41;
	t32 = 0.1e1 / (t38 ^ 2 * t49 + 0.1e1);
	t47 = t38 * t32;
	t45 = t38 * t40;
	t42 = t27 ^ 2 * t26 + 0.1e1;
	t34 = 0.1e1 / t40;
	t25 = 0.1e1 / t28;
	t24 = (0.1e1 + t49) * t47;
	t23 = 0.1e1 / t42;
	t20 = 0.1e1 / t22;
	t19 = 0.1e1 / (t33 * t51 + 0.1e1);
	t1 = [t34 * t32 * t48, t24, 0, 0, 0; (-t20 * t46 - (-t30 * t33 * t34 * t47 + (t32 - 0.1e1) * t37 * t29) * t37 * t51) * t19, (t40 * t20 - (-t29 * t45 + t30 * t37 + (t29 * t40 - t30 * t46) * t24) * t37 * t21) * t41 * t19, 0, 0, 0; ((-t36 * t45 - t43) * t25 - (-t39 * t45 + t44) * t50) * t23, (-t25 * t36 + t39 * t50) * t23 * t48, t42 * t23, 0, 0;];
	Ja_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 19:53:57
	% EndTime: 2019-12-29 19:53:57
	% DurationCPUTime: 0.25s
	% Computational Cost: add. (156->26), mult. (486->70), div. (108->11), fcn. (755->9), ass. (0->38)
	t49 = sin(qJ(3));
	t52 = cos(qJ(3));
	t54 = cos(qJ(1));
	t55 = t54 * t52;
	t51 = sin(qJ(1));
	t53 = cos(qJ(2));
	t57 = t51 * t53;
	t36 = t49 * t57 + t55;
	t50 = sin(qJ(2));
	t58 = t50 * t49;
	t35 = atan2(-t36, t58);
	t31 = sin(t35);
	t32 = cos(t35);
	t30 = -t31 * t36 + t32 * t58;
	t29 = 0.1e1 / t30 ^ 2;
	t56 = t54 * t49;
	t39 = -t51 * t52 + t53 * t56;
	t65 = t29 * t39;
	t63 = t32 * t36;
	t40 = t49 * t51 + t53 * t55;
	t46 = 0.1e1 / t50 ^ 2;
	t48 = 0.1e1 / t54 ^ 2;
	t34 = 0.1e1 / (t40 ^ 2 * t46 * t48 + 0.1e1);
	t45 = 0.1e1 / t50;
	t62 = t34 * t45;
	t61 = t39 ^ 2 * t29;
	t43 = 0.1e1 / t49;
	t60 = t43 * t45;
	t59 = t46 * t53;
	t47 = 0.1e1 / t54;
	t44 = 0.1e1 / t49 ^ 2;
	t38 = t52 * t57 - t56;
	t33 = 0.1e1 / (t36 ^ 2 * t44 * t46 + 0.1e1);
	t28 = 0.1e1 / t30;
	t27 = (t36 * t43 * t59 + t51) * t33;
	t26 = 0.1e1 / (0.1e1 + t61);
	t25 = (t36 * t44 * t52 - t38 * t43) * t45 * t33;
	t1 = [-t39 * t33 * t60, t27, t25, 0, 0; (-t36 * t28 - (-t31 + (t60 * t63 + t31) * t33) * t61) * t26, (t27 * t63 * t65 + (-t54 * t50 * t28 - (t32 * t53 + (-t27 + t51) * t50 * t31) * t65) * t49) * t26, (t40 * t28 - (t32 * t50 * t52 - t31 * t38 + (-t31 * t58 - t63) * t25) * t65) * t26, 0, 0; (t40 * t48 * t51 - t38 * t47) * t62, (-t40 * t47 * t59 - t52) * t34, -t39 * t47 * t62, 0, 0;];
	Ja_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 19:53:58
	% EndTime: 2019-12-29 19:53:58
	% DurationCPUTime: 0.20s
	% Computational Cost: add. (156->26), mult. (486->70), div. (108->11), fcn. (755->9), ass. (0->38)
	t50 = cos(qJ(3));
	t47 = sin(qJ(3));
	t52 = cos(qJ(1));
	t54 = t52 * t47;
	t49 = sin(qJ(1));
	t51 = cos(qJ(2));
	t55 = t49 * t51;
	t36 = t50 * t55 - t54;
	t48 = sin(qJ(2));
	t56 = t48 * t50;
	t34 = atan2(-t36, t56);
	t30 = sin(t34);
	t31 = cos(t34);
	t29 = -t30 * t36 + t31 * t56;
	t28 = 0.1e1 / t29 ^ 2;
	t53 = t52 * t50;
	t39 = t49 * t47 + t51 * t53;
	t63 = t28 * t39;
	t61 = t31 * t36;
	t38 = t49 * t50 - t51 * t54;
	t42 = 0.1e1 / t48 ^ 2;
	t46 = 0.1e1 / t52 ^ 2;
	t33 = 0.1e1 / (t38 ^ 2 * t46 * t42 + 0.1e1);
	t41 = 0.1e1 / t48;
	t60 = t33 * t41;
	t59 = t39 ^ 2 * t28;
	t43 = 0.1e1 / t50;
	t58 = t41 * t43;
	t57 = t42 * t51;
	t45 = 0.1e1 / t52;
	t44 = 0.1e1 / t50 ^ 2;
	t35 = t47 * t55 + t53;
	t32 = 0.1e1 / (t36 ^ 2 * t42 * t44 + 0.1e1);
	t27 = 0.1e1 / t29;
	t26 = (t36 * t43 * t57 + t49) * t32;
	t25 = 0.1e1 / (0.1e1 + t59);
	t24 = (-t36 * t44 * t47 + t35 * t43) * t41 * t32;
	t1 = [-t39 * t32 * t58, t26, t24, 0, 0; (-t36 * t27 - (-t30 + (t58 * t61 + t30) * t32) * t59) * t25, (t26 * t61 * t63 + (-t52 * t48 * t27 - (t31 * t51 + (-t26 + t49) * t48 * t30) * t63) * t50) * t25, (t38 * t27 - (-t31 * t48 * t47 + t30 * t35 + (-t30 * t56 - t61) * t24) * t63) * t25, 0, 0; (t38 * t46 * t49 + t35 * t45) * t60, (-t38 * t45 * t57 + t47) * t33, -t39 * t45 * t60, 0, 0;];
	Ja_rot = t1;
else
	Ja_rot=NaN(3,5);
end