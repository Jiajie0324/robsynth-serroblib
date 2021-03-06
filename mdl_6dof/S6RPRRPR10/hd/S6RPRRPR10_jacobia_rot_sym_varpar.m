% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6RPRRPR10
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
%   Wie in S6RPRRPR10_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d6]';
% 
% Output:
% Ja_rot [3x6]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 01:39
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S6RPRRPR10_jacobia_rot_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPR10_jacobia_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RPRRPR10_jacobia_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRRPR10_jacobia_rot_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:39:30
	% EndTime: 2019-10-10 01:39:30
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:39:30
	% EndTime: 2019-10-10 01:39:30
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (3->0), mult. (6->0), div. (5->0), fcn. (6->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 1, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:39:30
	% EndTime: 2019-10-10 01:39:30
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:39:30
	% EndTime: 2019-10-10 01:39:30
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:39:30
	% EndTime: 2019-10-10 01:39:30
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (86->19), mult. (224->55), div. (52->9), fcn. (332->9), ass. (0->36)
	t40 = sin(qJ(1));
	t56 = t40 ^ 2;
	t39 = sin(qJ(3));
	t42 = cos(qJ(3));
	t43 = cos(qJ(1));
	t45 = t43 * t42;
	t33 = atan2(-t45, t39);
	t31 = sin(t33);
	t32 = cos(t33);
	t24 = -t31 * t45 + t32 * t39;
	t23 = 0.1e1 / t24 ^ 2;
	t55 = t23 * t42;
	t38 = sin(qJ(4));
	t47 = t43 * t38;
	t41 = cos(qJ(4));
	t50 = t40 * t41;
	t30 = t39 * t50 + t47;
	t28 = 0.1e1 / t30 ^ 2;
	t46 = t43 * t41;
	t51 = t40 * t38;
	t29 = t39 * t51 - t46;
	t54 = t28 * t29;
	t53 = t31 * t39;
	t37 = t42 ^ 2;
	t52 = 0.1e1 / t39 ^ 2 * t37;
	t49 = t40 * t42;
	t34 = 0.1e1 / (t43 ^ 2 * t52 + 0.1e1);
	t48 = t43 * t34;
	t44 = t29 ^ 2 * t28 + 0.1e1;
	t35 = 0.1e1 / t39;
	t27 = 0.1e1 / t30;
	t26 = (0.1e1 + t52) * t48;
	t25 = 0.1e1 / t44;
	t22 = 0.1e1 / t24;
	t21 = 0.1e1 / (t56 * t37 * t23 + 0.1e1);
	t1 = [t35 * t34 * t49, 0, t26, 0, 0, 0; (-t22 * t45 + (-t32 * t35 * t37 * t48 + (-t34 + 0.1e1) * t42 * t31) * t56 * t55) * t21, 0, (t39 * t22 + (t43 * t53 + t32 * t42 + (-t32 * t45 - t53) * t26) * t55) * t40 * t21, 0, 0, 0; ((t39 * t47 + t50) * t27 - (t39 * t46 - t51) * t54) * t25, 0, (t27 * t38 - t41 * t54) * t25 * t49, t44 * t25, 0, 0;];
	Ja_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:39:30
	% EndTime: 2019-10-10 01:39:30
	% DurationCPUTime: 0.15s
	% Computational Cost: add. (160->24), mult. (509->69), div. (100->11), fcn. (770->9), ass. (0->40)
	t54 = cos(qJ(3));
	t68 = t54 ^ 2;
	t51 = sin(qJ(3));
	t50 = sin(qJ(4));
	t55 = cos(qJ(1));
	t58 = t55 * t50;
	t52 = sin(qJ(1));
	t53 = cos(qJ(4));
	t61 = t52 * t53;
	t41 = t51 * t58 + t61;
	t59 = t54 * t50;
	t36 = atan2(t41, t59);
	t32 = sin(t36);
	t33 = cos(t36);
	t31 = t32 * t41 + t33 * t59;
	t30 = 0.1e1 / t31 ^ 2;
	t57 = t55 * t53;
	t62 = t52 * t50;
	t39 = t51 * t62 - t57;
	t67 = t30 * t39;
	t65 = t33 * t41;
	t64 = t39 ^ 2 * t30;
	t44 = 0.1e1 / t50;
	t48 = 0.1e1 / t54;
	t63 = t44 * t48;
	t60 = t52 * t54;
	t40 = t51 * t61 + t58;
	t38 = 0.1e1 / t40 ^ 2;
	t56 = t52 ^ 2 * t68 * t38;
	t49 = 0.1e1 / t68;
	t45 = 0.1e1 / t50 ^ 2;
	t42 = t51 * t57 - t62;
	t37 = 0.1e1 / t40;
	t35 = 0.1e1 / (t41 ^ 2 * t49 * t45 + 0.1e1);
	t34 = 0.1e1 / (0.1e1 + t56);
	t29 = 0.1e1 / t31;
	t28 = (t41 * t44 * t49 * t51 + t55) * t35;
	t27 = 0.1e1 / (0.1e1 + t64);
	t26 = (-t41 * t45 * t53 + t42 * t44) * t48 * t35;
	t1 = [-t39 * t35 * t63, 0, t28, t26, 0, 0; (t41 * t29 - (-t32 + (-t63 * t65 + t32) * t35) * t64) * t27, 0, (-t28 * t65 * t67 + (t29 * t60 - (-t33 * t51 + (-t28 + t55) * t54 * t32) * t67) * t50) * t27, (t40 * t29 - (t33 * t54 * t53 + t32 * t42 + (-t32 * t59 + t65) * t26) * t67) * t27, 0, 0; (-t38 * t42 * t52 + t37 * t55) * t54 * t34, 0, (-t37 * t51 * t52 - t53 * t56) * t34, t39 * t38 * t34 * t60, 0, 0;];
	Ja_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:39:30
	% EndTime: 2019-10-10 01:39:30
	% DurationCPUTime: 0.14s
	% Computational Cost: add. (164->26), mult. (425->68), div. (58->9), fcn. (611->11), ass. (0->43)
	t63 = sin(qJ(1));
	t81 = t63 ^ 2;
	t62 = sin(qJ(3));
	t65 = cos(qJ(4));
	t67 = cos(qJ(1));
	t70 = t67 * t65;
	t61 = sin(qJ(4));
	t75 = t63 * t61;
	t48 = t62 * t75 - t70;
	t71 = t67 * t61;
	t74 = t63 * t65;
	t49 = t62 * t74 + t71;
	t60 = sin(qJ(6));
	t64 = cos(qJ(6));
	t43 = t48 * t60 + t49 * t64;
	t41 = 0.1e1 / t43 ^ 2;
	t42 = -t48 * t64 + t49 * t60;
	t80 = t41 * t42;
	t79 = t42 ^ 2 * t41;
	t66 = cos(qJ(3));
	t69 = t67 * t66;
	t54 = atan2(t69, -t62);
	t52 = sin(t54);
	t53 = cos(t54);
	t46 = t52 * t69 - t53 * t62;
	t45 = 0.1e1 / t46 ^ 2;
	t78 = t45 * t66;
	t77 = t52 * t62;
	t59 = t66 ^ 2;
	t76 = 0.1e1 / t62 ^ 2 * t59;
	t73 = t63 * t66;
	t55 = 0.1e1 / (t67 ^ 2 * t76 + 0.1e1);
	t72 = t67 * t55;
	t68 = 0.1e1 + t79;
	t57 = 0.1e1 / t62;
	t51 = t62 * t70 - t75;
	t50 = t62 * t71 + t74;
	t47 = (0.1e1 + t76) * t72;
	t44 = 0.1e1 / t46;
	t40 = 0.1e1 / t43;
	t39 = 0.1e1 / (t81 * t59 * t45 + 0.1e1);
	t38 = 0.1e1 / t68;
	t1 = [t57 * t55 * t73, 0, t47, 0, 0, 0; (t44 * t69 - (t53 * t57 * t59 * t72 + (t55 - 0.1e1) * t66 * t52) * t81 * t78) * t39, 0, (-t62 * t44 - (-t67 * t77 - t53 * t66 + (t53 * t69 + t77) * t47) * t78) * t63 * t39, 0, 0, 0; ((-t50 * t64 + t51 * t60) * t40 - (t50 * t60 + t51 * t64) * t80) * t38, 0, ((t60 * t65 - t61 * t64) * t40 - (t60 * t61 + t64 * t65) * t80) * t38 * t73, (-t43 * t40 - t79) * t38, 0, t68 * t38;];
	Ja_rot = t1;
else
	Ja_rot=NaN(3,6);
end