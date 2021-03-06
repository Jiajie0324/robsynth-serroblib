% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6RRRPPR4
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
%   Wie in S6RRRPPR4_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d6,theta4]';
% 
% Output:
% Ja_rot [3x6]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 11:22
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S6RRRPPR4_jacobia_rot_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR4_jacobia_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRPPR4_jacobia_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPPR4_jacobia_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:22:13
	% EndTime: 2019-10-10 11:22:13
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:22:13
	% EndTime: 2019-10-10 11:22:13
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (3->0), mult. (6->0), div. (5->0), fcn. (6->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 1, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:22:13
	% EndTime: 2019-10-10 11:22:13
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:22:13
	% EndTime: 2019-10-10 11:22:13
	% DurationCPUTime: 0.10s
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
	t1 = [t34 * t32 * t48, t24, 0, 0, 0, 0; (-t20 * t46 - (-t30 * t33 * t34 * t47 + (t32 - 0.1e1) * t37 * t29) * t37 * t51) * t19, (t40 * t20 - (-t29 * t45 + t30 * t37 + (t29 * t40 - t30 * t46) * t24) * t37 * t21) * t41 * t19, 0, 0, 0, 0; ((-t36 * t45 - t43) * t25 - (-t39 * t45 + t44) * t50) * t23, (-t25 * t36 + t39 * t50) * t23 * t48, t42 * t23, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:22:13
	% EndTime: 2019-10-10 11:22:13
	% DurationCPUTime: 0.15s
	% Computational Cost: add. (157->21), mult. (224->55), div. (52->9), fcn. (332->9), ass. (0->34)
	t48 = cos(qJ(2));
	t46 = sin(qJ(2));
	t47 = sin(qJ(1));
	t54 = t47 * t46;
	t38 = atan2(-t54, -t48);
	t36 = sin(t38);
	t37 = cos(t38);
	t30 = -t36 * t54 - t37 * t48;
	t29 = 0.1e1 / t30 ^ 2;
	t49 = cos(qJ(1));
	t59 = t29 * t49 ^ 2;
	t42 = qJ(3) + pkin(10);
	t40 = sin(t42);
	t41 = cos(t42);
	t51 = t49 * t41;
	t35 = t47 * t40 + t48 * t51;
	t33 = 0.1e1 / t35 ^ 2;
	t52 = t49 * t40;
	t34 = -t47 * t41 + t48 * t52;
	t58 = t33 * t34;
	t43 = t46 ^ 2;
	t57 = t43 / t48 ^ 2;
	t56 = t46 * t49;
	t39 = 0.1e1 / (t47 ^ 2 * t57 + 0.1e1);
	t55 = t47 * t39;
	t53 = t47 * t48;
	t50 = t34 ^ 2 * t33 + 0.1e1;
	t44 = 0.1e1 / t48;
	t32 = 0.1e1 / t35;
	t31 = (0.1e1 + t57) * t55;
	t28 = 0.1e1 / t30;
	t27 = 0.1e1 / t50;
	t26 = 0.1e1 / (t43 * t59 + 0.1e1);
	t1 = [t44 * t39 * t56, t31, 0, 0, 0, 0; (-t28 * t54 - (-t37 * t43 * t44 * t55 + (t39 - 0.1e1) * t46 * t36) * t46 * t59) * t26, (t48 * t28 - (-t36 * t53 + t37 * t46 + (t36 * t48 - t37 * t54) * t31) * t46 * t29) * t49 * t26, 0, 0, 0, 0; ((-t40 * t53 - t51) * t32 - (-t41 * t53 + t52) * t58) * t27, (-t32 * t40 + t41 * t58) * t27 * t56, t50 * t27, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:22:13
	% EndTime: 2019-10-10 11:22:13
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (446->27), mult. (509->70), div. (100->11), fcn. (770->9), ass. (0->40)
	t59 = sin(qJ(2));
	t74 = t59 ^ 2;
	t54 = qJ(3) + pkin(10);
	t52 = sin(t54);
	t53 = cos(t54);
	t62 = cos(qJ(1));
	t64 = t62 * t53;
	t60 = sin(qJ(1));
	t61 = cos(qJ(2));
	t66 = t60 * t61;
	t43 = t52 * t66 + t64;
	t68 = t59 * t52;
	t39 = atan2(-t43, t68);
	t36 = sin(t39);
	t37 = cos(t39);
	t35 = -t36 * t43 + t37 * t68;
	t34 = 0.1e1 / t35 ^ 2;
	t65 = t62 * t52;
	t46 = -t60 * t53 + t61 * t65;
	t73 = t34 * t46;
	t71 = t37 * t43;
	t70 = t46 ^ 2 * t34;
	t50 = 0.1e1 / t52;
	t56 = 0.1e1 / t59;
	t69 = t50 * t56;
	t67 = t59 * t62;
	t47 = t60 * t52 + t61 * t64;
	t42 = 0.1e1 / t47 ^ 2;
	t63 = t62 ^ 2 * t74 * t42;
	t57 = 0.1e1 / t74;
	t51 = 0.1e1 / t52 ^ 2;
	t45 = t53 * t66 - t65;
	t41 = 0.1e1 / t47;
	t40 = 0.1e1 / (0.1e1 + t63);
	t38 = 0.1e1 / (t43 ^ 2 * t57 * t51 + 0.1e1);
	t33 = 0.1e1 / t35;
	t32 = (t43 * t50 * t57 * t61 + t60) * t38;
	t31 = 0.1e1 / (0.1e1 + t70);
	t30 = (t43 * t51 * t53 - t45 * t50) * t56 * t38;
	t1 = [-t46 * t38 * t69, t32, t30, 0, 0, 0; (-t43 * t33 - (-t36 + (t69 * t71 + t36) * t38) * t70) * t31, (t32 * t71 * t73 + (-t33 * t67 - (t37 * t61 + (-t32 + t60) * t59 * t36) * t73) * t52) * t31, (t47 * t33 - (t37 * t59 * t53 - t36 * t45 + (-t36 * t68 - t71) * t30) * t73) * t31, 0, 0, 0; (-t42 * t45 * t62 + t41 * t60) * t59 * t40, (-t41 * t61 * t62 - t53 * t63) * t40, -t46 * t42 * t40 * t67, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:22:13
	% EndTime: 2019-10-10 11:22:14
	% DurationCPUTime: 0.22s
	% Computational Cost: add. (273->26), mult. (425->68), div. (58->9), fcn. (611->11), ass. (0->41)
	t63 = qJ(3) + pkin(10);
	t62 = cos(t63);
	t69 = sin(qJ(1));
	t71 = cos(qJ(2));
	t61 = sin(t63);
	t72 = cos(qJ(1));
	t75 = t72 * t61;
	t54 = -t69 * t62 + t71 * t75;
	t74 = t72 * t62;
	t55 = t69 * t61 + t71 * t74;
	t67 = sin(qJ(6));
	t70 = cos(qJ(6));
	t46 = t54 * t67 + t55 * t70;
	t44 = 0.1e1 / t46 ^ 2;
	t45 = -t54 * t70 + t55 * t67;
	t83 = t44 * t45;
	t82 = t45 ^ 2 * t44;
	t68 = sin(qJ(2));
	t77 = t69 * t68;
	t59 = atan2(t77, t71);
	t56 = sin(t59);
	t57 = cos(t59);
	t50 = t56 * t77 + t57 * t71;
	t49 = 0.1e1 / t50 ^ 2;
	t81 = t49 * t72 ^ 2;
	t64 = t68 ^ 2;
	t80 = t64 / t71 ^ 2;
	t79 = t68 * t72;
	t58 = 0.1e1 / (t69 ^ 2 * t80 + 0.1e1);
	t78 = t69 * t58;
	t76 = t69 * t71;
	t73 = 0.1e1 + t82;
	t65 = 0.1e1 / t71;
	t53 = -t62 * t76 + t75;
	t52 = -t61 * t76 - t74;
	t51 = (0.1e1 + t80) * t78;
	t48 = 0.1e1 / t50;
	t47 = 0.1e1 / (t64 * t81 + 0.1e1);
	t43 = 0.1e1 / t46;
	t42 = 0.1e1 / t73;
	t1 = [t65 * t58 * t79, t51, 0, 0, 0, 0; (t48 * t77 + (t57 * t64 * t65 * t78 + (-t58 + 0.1e1) * t68 * t56) * t68 * t81) * t47, (-t71 * t48 + (t56 * t76 - t57 * t68 + (-t56 * t71 + t57 * t77) * t51) * t68 * t49) * t72 * t47, 0, 0, 0, 0; ((-t52 * t70 + t53 * t67) * t43 - (t52 * t67 + t53 * t70) * t83) * t42, ((t61 * t70 - t62 * t67) * t43 - (-t61 * t67 - t62 * t70) * t83) * t42 * t79, (-t46 * t43 - t82) * t42, 0, 0, t73 * t42;];
	Ja_rot = t1;
else
	Ja_rot=NaN(3,6);
end