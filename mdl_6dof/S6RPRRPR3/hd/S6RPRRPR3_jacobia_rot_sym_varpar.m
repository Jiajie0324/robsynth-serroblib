% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6RPRRPR3
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
%   Wie in S6RPRRPR3_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d6,theta2]';
% 
% Output:
% Ja_rot [3x6]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 01:27
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S6RPRRPR3_jacobia_rot_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPR3_jacobia_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RPRRPR3_jacobia_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRPR3_jacobia_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:26:58
	% EndTime: 2019-10-10 01:26:58
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:26:58
	% EndTime: 2019-10-10 01:26:58
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (3->0), mult. (6->0), div. (5->0), fcn. (6->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 1, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:26:58
	% EndTime: 2019-10-10 01:26:58
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (9->0), mult. (6->0), div. (5->0), fcn. (6->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 1, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:26:58
	% EndTime: 2019-10-10 01:26:58
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:26:58
	% EndTime: 2019-10-10 01:26:59
	% DurationCPUTime: 0.15s
	% Computational Cost: add. (218->21), mult. (224->57), div. (52->9), fcn. (332->9), ass. (0->35)
	t36 = qJ(1) + pkin(10);
	t35 = cos(t36);
	t54 = t35 ^ 2;
	t43 = cos(qJ(3));
	t34 = sin(t36);
	t41 = sin(qJ(3));
	t49 = t34 * t41;
	t32 = atan2(-t49, -t43);
	t30 = sin(t32);
	t31 = cos(t32);
	t23 = -t30 * t49 - t31 * t43;
	t22 = 0.1e1 / t23 ^ 2;
	t53 = t22 * t41;
	t40 = sin(qJ(4));
	t42 = cos(qJ(4));
	t45 = t42 * t43;
	t29 = t34 * t40 + t35 * t45;
	t27 = 0.1e1 / t29 ^ 2;
	t46 = t40 * t43;
	t28 = -t34 * t42 + t35 * t46;
	t52 = t27 * t28;
	t51 = t30 * t43;
	t37 = t41 ^ 2;
	t47 = t37 / t43 ^ 2;
	t33 = 0.1e1 / (t34 ^ 2 * t47 + 0.1e1);
	t50 = t34 * t33;
	t48 = t35 * t41;
	t44 = t28 ^ 2 * t27 + 0.1e1;
	t38 = 0.1e1 / t43;
	t26 = 0.1e1 / t29;
	t25 = (0.1e1 + t47) * t50;
	t24 = 0.1e1 / t44;
	t21 = 0.1e1 / t23;
	t20 = 0.1e1 / (t54 * t37 * t22 + 0.1e1);
	t1 = [t38 * t33 * t48, 0, t25, 0, 0, 0; (-t21 * t49 - (-t31 * t37 * t38 * t50 + (t33 - 0.1e1) * t41 * t30) * t54 * t53) * t20, 0, (t43 * t21 - (-t34 * t51 + t31 * t41 + (-t31 * t49 + t51) * t25) * t53) * t35 * t20, 0, 0, 0; ((-t34 * t46 - t35 * t42) * t26 - (-t34 * t45 + t35 * t40) * t52) * t24, 0, (-t26 * t40 + t42 * t52) * t24 * t48, t44 * t24, 0, 0;];
	Ja_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:26:59
	% EndTime: 2019-10-10 01:26:59
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (378->27), mult. (509->71), div. (100->11), fcn. (770->9), ass. (0->39)
	t54 = sin(qJ(3));
	t67 = t54 ^ 2;
	t47 = qJ(1) + pkin(10);
	t45 = sin(t47);
	t46 = cos(t47);
	t55 = cos(qJ(4));
	t53 = sin(qJ(4));
	t56 = cos(qJ(3));
	t60 = t53 * t56;
	t37 = t45 * t60 + t46 * t55;
	t59 = t54 * t53;
	t34 = atan2(-t37, t59);
	t31 = sin(t34);
	t32 = cos(t34);
	t29 = -t31 * t37 + t32 * t59;
	t28 = 0.1e1 / t29 ^ 2;
	t40 = -t45 * t55 + t46 * t60;
	t66 = t28 * t40;
	t64 = t32 * t37;
	t63 = t40 ^ 2 * t28;
	t62 = t46 * t54;
	t48 = 0.1e1 / t53;
	t51 = 0.1e1 / t54;
	t61 = t48 * t51;
	t58 = t55 * t56;
	t41 = t45 * t53 + t46 * t58;
	t36 = 0.1e1 / t41 ^ 2;
	t57 = t46 ^ 2 * t67 * t36;
	t52 = 0.1e1 / t67;
	t49 = 0.1e1 / t53 ^ 2;
	t39 = t45 * t58 - t46 * t53;
	t35 = 0.1e1 / t41;
	t33 = 0.1e1 / (t37 ^ 2 * t52 * t49 + 0.1e1);
	t30 = 0.1e1 / (0.1e1 + t57);
	t27 = 0.1e1 / t29;
	t26 = (t37 * t48 * t52 * t56 + t45) * t33;
	t25 = 0.1e1 / (0.1e1 + t63);
	t24 = (t37 * t49 * t55 - t39 * t48) * t51 * t33;
	t1 = [-t40 * t33 * t61, 0, t26, t24, 0, 0; (-t37 * t27 - (-t31 + (t61 * t64 + t31) * t33) * t63) * t25, 0, (t26 * t64 * t66 + (-t27 * t62 - (t32 * t56 + (-t26 + t45) * t54 * t31) * t66) * t53) * t25, (t41 * t27 - (t32 * t54 * t55 - t31 * t39 + (-t31 * t59 - t64) * t24) * t66) * t25, 0, 0; (-t36 * t39 * t46 + t35 * t45) * t54 * t30, 0, (-t35 * t46 * t56 - t55 * t57) * t30, -t40 * t36 * t30 * t62, 0, 0;];
	Ja_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:26:59
	% EndTime: 2019-10-10 01:26:59
	% DurationCPUTime: 0.19s
	% Computational Cost: add. (334->26), mult. (425->70), div. (58->9), fcn. (611->11), ass. (0->42)
	t56 = qJ(1) + pkin(10);
	t55 = cos(t56);
	t77 = t55 ^ 2;
	t54 = sin(t56);
	t64 = cos(qJ(4));
	t61 = sin(qJ(4));
	t65 = cos(qJ(3));
	t68 = t61 * t65;
	t47 = -t54 * t64 + t55 * t68;
	t67 = t64 * t65;
	t48 = t54 * t61 + t55 * t67;
	t60 = sin(qJ(6));
	t63 = cos(qJ(6));
	t40 = t47 * t60 + t48 * t63;
	t38 = 0.1e1 / t40 ^ 2;
	t39 = -t47 * t63 + t48 * t60;
	t76 = t38 * t39;
	t75 = t39 ^ 2 * t38;
	t62 = sin(qJ(3));
	t71 = t54 * t62;
	t52 = atan2(t71, t65);
	t49 = sin(t52);
	t50 = cos(t52);
	t44 = t49 * t71 + t50 * t65;
	t43 = 0.1e1 / t44 ^ 2;
	t74 = t43 * t62;
	t73 = t49 * t65;
	t57 = t62 ^ 2;
	t69 = t57 / t65 ^ 2;
	t51 = 0.1e1 / (t54 ^ 2 * t69 + 0.1e1);
	t72 = t54 * t51;
	t70 = t55 * t62;
	t66 = 0.1e1 + t75;
	t58 = 0.1e1 / t65;
	t46 = -t54 * t67 + t55 * t61;
	t45 = -t54 * t68 - t55 * t64;
	t42 = 0.1e1 / t44;
	t41 = (0.1e1 + t69) * t72;
	t37 = 0.1e1 / t40;
	t36 = 0.1e1 / (t77 * t57 * t43 + 0.1e1);
	t35 = 0.1e1 / t66;
	t1 = [t58 * t51 * t70, 0, t41, 0, 0, 0; (t42 * t71 + (t50 * t57 * t58 * t72 + (-t51 + 0.1e1) * t62 * t49) * t77 * t74) * t36, 0, (-t65 * t42 + (t54 * t73 - t50 * t62 + (t50 * t71 - t73) * t41) * t74) * t55 * t36, 0, 0, 0; ((-t45 * t63 + t46 * t60) * t37 - (t45 * t60 + t46 * t63) * t76) * t35, 0, ((-t60 * t64 + t61 * t63) * t37 - (-t60 * t61 - t63 * t64) * t76) * t35 * t70, (-t40 * t37 - t75) * t35, 0, t66 * t35;];
	Ja_rot = t1;
else
	Ja_rot=NaN(3,6);
end