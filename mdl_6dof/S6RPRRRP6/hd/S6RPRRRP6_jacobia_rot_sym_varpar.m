% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6RPRRRP6
% Use Code from Maple symbolic Code Generation
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% Zeitableitung der Winkeldarstellung des Endeffektors in Basis-Koordinaten
% 
% Winkeldarstellung: Euler-XYZ-Winkel, rotx(alpha)*roty(beta)*rotz(gamma)
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt.
%   Wie in S6RPRRRP6_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,theta2]';
% 
% Output:
% Ja_rot [3x6]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 01:54
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S6RPRRRP6_jacobia_rot_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP6_jacobia_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RPRRRP6_jacobia_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRP6_jacobia_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:54:08
	% EndTime: 2019-10-10 01:54:08
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:54:08
	% EndTime: 2019-10-10 01:54:08
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (3->0), mult. (6->0), div. (5->0), fcn. (6->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 1, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:54:08
	% EndTime: 2019-10-10 01:54:08
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:54:08
	% EndTime: 2019-10-10 01:54:08
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:54:08
	% EndTime: 2019-10-10 01:54:08
	% DurationCPUTime: 0.18s
	% Computational Cost: add. (238->21), mult. (224->54), div. (52->9), fcn. (332->9), ass. (0->36)
	t43 = pkin(10) + qJ(3);
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
	t1 = [t39 * t37 * t55, 0, t28, 0, 0, 0; (-t25 * t53 - (-t33 * t38 * t39 * t54 + (t37 - 0.1e1) * t41 * t32) * t41 * t59) * t24, 0, (t42 * t25 - (-t45 * t57 + t33 * t41 + (-t33 * t53 + t57) * t28) * t41 * t26) * t47 * t24, 0, 0, 0; ((-t42 * t52 - t49) * t30 - (-t42 * t51 + t50) * t58) * t29, 0, (-t30 * t44 + t46 * t58) * t29 * t55, t48 * t29, 0, 0;];
	Ja_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:54:08
	% EndTime: 2019-10-10 01:54:08
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (317->22), mult. (251->54), div. (57->9), fcn. (367->9), ass. (0->38)
	t61 = pkin(10) + qJ(3);
	t58 = cos(t61);
	t57 = sin(t61);
	t63 = sin(qJ(1));
	t70 = t63 * t57;
	t52 = atan2(-t70, -t58);
	t50 = sin(t52);
	t51 = cos(t52);
	t43 = -t50 * t70 - t51 * t58;
	t42 = 0.1e1 / t43 ^ 2;
	t64 = cos(qJ(1));
	t76 = t42 * t64 ^ 2;
	t62 = qJ(4) + qJ(5);
	t60 = cos(t62);
	t66 = t64 * t60;
	t59 = sin(t62);
	t69 = t63 * t59;
	t49 = t58 * t66 + t69;
	t47 = 0.1e1 / t49 ^ 2;
	t67 = t64 * t59;
	t68 = t63 * t60;
	t48 = t58 * t67 - t68;
	t75 = t47 * t48;
	t74 = t50 * t58;
	t54 = t57 ^ 2;
	t73 = t54 / t58 ^ 2;
	t72 = t57 * t64;
	t53 = 0.1e1 / (t63 ^ 2 * t73 + 0.1e1);
	t71 = t63 * t53;
	t65 = t48 ^ 2 * t47 + 0.1e1;
	t55 = 0.1e1 / t58;
	t46 = 0.1e1 / t49;
	t45 = 0.1e1 / t65;
	t44 = (0.1e1 + t73) * t71;
	t41 = 0.1e1 / t43;
	t40 = 0.1e1 / (t54 * t76 + 0.1e1);
	t39 = t65 * t45;
	t1 = [t55 * t53 * t72, 0, t44, 0, 0, 0; (-t41 * t70 - (-t51 * t54 * t55 * t71 + (t53 - 0.1e1) * t57 * t50) * t57 * t76) * t40, 0, (t58 * t41 - (-t63 * t74 + t51 * t57 + (-t51 * t70 + t74) * t44) * t57 * t42) * t64 * t40, 0, 0, 0; ((-t58 * t69 - t66) * t46 - (-t58 * t68 + t67) * t75) * t45, 0, (-t46 * t59 + t60 * t75) * t45 * t72, t39, t39, 0;];
	Ja_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:54:08
	% EndTime: 2019-10-10 01:54:08
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (317->22), mult. (251->54), div. (57->9), fcn. (367->9), ass. (0->38)
	t62 = pkin(10) + qJ(3);
	t59 = cos(t62);
	t58 = sin(t62);
	t64 = sin(qJ(1));
	t71 = t64 * t58;
	t53 = atan2(-t71, -t59);
	t51 = sin(t53);
	t52 = cos(t53);
	t44 = -t51 * t71 - t52 * t59;
	t43 = 0.1e1 / t44 ^ 2;
	t65 = cos(qJ(1));
	t77 = t43 * t65 ^ 2;
	t63 = qJ(4) + qJ(5);
	t61 = cos(t63);
	t67 = t65 * t61;
	t60 = sin(t63);
	t70 = t64 * t60;
	t50 = t59 * t67 + t70;
	t48 = 0.1e1 / t50 ^ 2;
	t68 = t65 * t60;
	t69 = t64 * t61;
	t49 = t59 * t68 - t69;
	t76 = t48 * t49;
	t75 = t51 * t59;
	t55 = t58 ^ 2;
	t74 = t55 / t59 ^ 2;
	t73 = t58 * t65;
	t54 = 0.1e1 / (t64 ^ 2 * t74 + 0.1e1);
	t72 = t64 * t54;
	t66 = t49 ^ 2 * t48 + 0.1e1;
	t56 = 0.1e1 / t59;
	t47 = 0.1e1 / t50;
	t46 = 0.1e1 / t66;
	t45 = (0.1e1 + t74) * t72;
	t42 = 0.1e1 / t44;
	t41 = 0.1e1 / (t55 * t77 + 0.1e1);
	t40 = t66 * t46;
	t1 = [t56 * t54 * t73, 0, t45, 0, 0, 0; (-t42 * t71 - (-t52 * t55 * t56 * t72 + (t54 - 0.1e1) * t58 * t51) * t58 * t77) * t41, 0, (t59 * t42 - (-t64 * t75 + t52 * t58 + (-t52 * t71 + t75) * t45) * t58 * t43) * t65 * t41, 0, 0, 0; ((-t59 * t70 - t67) * t47 - (-t59 * t69 + t68) * t76) * t46, 0, (-t47 * t60 + t61 * t76) * t46 * t73, t40, t40, 0;];
	Ja_rot = t1;
else
	Ja_rot=NaN(3,6);
end