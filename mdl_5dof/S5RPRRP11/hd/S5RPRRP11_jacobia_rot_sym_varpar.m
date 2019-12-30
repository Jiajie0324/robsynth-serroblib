% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S5RPRRP11
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
%   Wie in S5RPRRP11_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d4,theta2]';
% 
% Output:
% Ja_rot [3x5]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 17:32
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S5RPRRP11_jacobia_rot_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRP11_jacobia_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RPRRP11_jacobia_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRP11_jacobia_rot_sym_varpar: pkin has to be [8x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 17:32:35
	% EndTime: 2019-12-29 17:32:35
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 17:32:35
	% EndTime: 2019-12-29 17:32:35
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (3->0), mult. (6->0), div. (5->0), fcn. (6->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 1, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 17:32:35
	% EndTime: 2019-12-29 17:32:35
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 17:32:35
	% EndTime: 2019-12-29 17:32:35
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 17:32:36
	% EndTime: 2019-12-29 17:32:36
	% DurationCPUTime: 0.22s
	% Computational Cost: add. (238->21), mult. (224->54), div. (52->9), fcn. (332->9), ass. (0->36)
	t43 = pkin(8) + qJ(3);
	t42 = cos(t43);
	t41 = sin(t43);
	t45 = sin(qJ(1));
	t53 = t45 * t41;
	t36 = atan2(-t53, -t42);
	t32 = sin(t36);
	t33 = cos(t36);
	t27 = -t32 * t53 - t33 * t42;
	t26 = 0.1e1 / t27 ^ 2;
	t47 = cos(qJ(1));
	t59 = t26 * t47 ^ 2;
	t46 = cos(qJ(4));
	t49 = t47 * t46;
	t44 = sin(qJ(4));
	t52 = t45 * t44;
	t35 = t42 * t49 + t52;
	t31 = 0.1e1 / t35 ^ 2;
	t50 = t47 * t44;
	t51 = t45 * t46;
	t34 = t42 * t50 - t51;
	t58 = t31 * t34;
	t57 = t32 * t42;
	t38 = t41 ^ 2;
	t56 = t38 / t42 ^ 2;
	t55 = t41 * t47;
	t37 = 0.1e1 / (t45 ^ 2 * t56 + 0.1e1);
	t54 = t45 * t37;
	t48 = t34 ^ 2 * t31 + 0.1e1;
	t39 = 0.1e1 / t42;
	t30 = 0.1e1 / t35;
	t29 = 0.1e1 / t48;
	t28 = (0.1e1 + t56) * t54;
	t25 = 0.1e1 / t27;
	t24 = 0.1e1 / (t38 * t59 + 0.1e1);
	t1 = [t39 * t37 * t55, 0, t28, 0, 0; (-t25 * t53 - (-t33 * t38 * t39 * t54 + (t37 - 0.1e1) * t41 * t32) * t41 * t59) * t24, 0, (t42 * t25 - (-t45 * t57 + t33 * t41 + (-t33 * t53 + t57) * t28) * t41 * t26) * t47 * t24, 0, 0; ((-t42 * t52 - t49) * t30 - (-t42 * t51 + t50) * t58) * t29, 0, (-t30 * t44 + t46 * t58) * t29 * t55, t48 * t29, 0;];
	Ja_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 17:32:41
	% EndTime: 2019-12-29 17:32:41
	% DurationCPUTime: 0.28s
	% Computational Cost: add. (353->27), mult. (509->69), div. (100->11), fcn. (770->9), ass. (0->41)
	t53 = pkin(8) + qJ(3);
	t51 = sin(t53);
	t73 = t51 ^ 2;
	t52 = cos(t53);
	t59 = cos(qJ(4));
	t60 = cos(qJ(1));
	t62 = t60 * t59;
	t57 = sin(qJ(4));
	t58 = sin(qJ(1));
	t65 = t58 * t57;
	t41 = t52 * t65 + t62;
	t67 = t51 * t57;
	t38 = atan2(-t41, t67);
	t34 = sin(t38);
	t35 = cos(t38);
	t33 = -t34 * t41 + t35 * t67;
	t32 = 0.1e1 / t33 ^ 2;
	t63 = t60 * t57;
	t64 = t58 * t59;
	t44 = t52 * t63 - t64;
	t72 = t32 * t44;
	t70 = t35 * t41;
	t69 = t44 ^ 2 * t32;
	t49 = 0.1e1 / t51;
	t54 = 0.1e1 / t57;
	t68 = t49 * t54;
	t66 = t51 * t60;
	t45 = t52 * t62 + t65;
	t40 = 0.1e1 / t45 ^ 2;
	t61 = t60 ^ 2 * t73 * t40;
	t55 = 0.1e1 / t57 ^ 2;
	t50 = 0.1e1 / t73;
	t43 = t52 * t64 - t63;
	t39 = 0.1e1 / t45;
	t37 = 0.1e1 / (t41 ^ 2 * t50 * t55 + 0.1e1);
	t36 = 0.1e1 / (0.1e1 + t61);
	t31 = 0.1e1 / t33;
	t30 = (t41 * t50 * t52 * t54 + t58) * t37;
	t29 = 0.1e1 / (0.1e1 + t69);
	t28 = (t41 * t55 * t59 - t43 * t54) * t49 * t37;
	t1 = [-t44 * t37 * t68, 0, t30, t28, 0; (-t41 * t31 - (-t34 + (t68 * t70 + t34) * t37) * t69) * t29, 0, (t30 * t70 * t72 + (-t31 * t66 - (t35 * t52 + (-t30 + t58) * t51 * t34) * t72) * t57) * t29, (t45 * t31 - (t35 * t51 * t59 - t34 * t43 + (-t34 * t67 - t70) * t28) * t72) * t29, 0; (-t40 * t43 * t60 + t39 * t58) * t51 * t36, 0, (-t39 * t52 * t60 - t59 * t61) * t36, -t44 * t40 * t36 * t66, 0;];
	Ja_rot = t1;
else
	Ja_rot=NaN(3,5);
end