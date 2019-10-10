% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6RPRPPR6
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
%   Wie in S6RPRPPR6_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d6,theta4,theta5]';
% 
% Output:
% Ja_rot [3x6]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 00:24
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S6RPRPPR6_jacobia_rot_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPPR6_jacobia_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RPRPPR6_jacobia_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPPR6_jacobia_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 00:24:00
	% EndTime: 2019-10-10 00:24:00
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 00:24:00
	% EndTime: 2019-10-10 00:24:00
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (3->0), mult. (6->0), div. (5->0), fcn. (6->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 1, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 00:24:00
	% EndTime: 2019-10-10 00:24:00
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 00:24:00
	% EndTime: 2019-10-10 00:24:00
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 00:24:00
	% EndTime: 2019-10-10 00:24:00
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 00:24:00
	% EndTime: 2019-10-10 00:24:00
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (198->20), mult. (197->53), div. (47->9), fcn. (297->9), ass. (0->35)
	t38 = qJ(3) + pkin(9);
	t36 = sin(t38);
	t37 = cos(t38);
	t42 = cos(qJ(1));
	t45 = t42 * t37;
	t31 = atan2(-t45, t36);
	t29 = sin(t31);
	t30 = cos(t31);
	t22 = -t29 * t45 + t30 * t36;
	t21 = 0.1e1 / t22 ^ 2;
	t41 = sin(qJ(1));
	t53 = t21 * t41 ^ 2;
	t39 = sin(pkin(10));
	t44 = t42 * t39;
	t40 = cos(pkin(10));
	t47 = t41 * t40;
	t28 = t36 * t47 + t44;
	t26 = 0.1e1 / t28 ^ 2;
	t43 = t42 * t40;
	t48 = t41 * t39;
	t27 = t36 * t48 - t43;
	t52 = t26 * t27;
	t51 = t29 * t36;
	t35 = t37 ^ 2;
	t50 = 0.1e1 / t36 ^ 2 * t35;
	t49 = t37 * t41;
	t32 = 0.1e1 / (t42 ^ 2 * t50 + 0.1e1);
	t46 = t42 * t32;
	t33 = 0.1e1 / t36;
	t25 = 0.1e1 / t28;
	t24 = 0.1e1 / (t27 ^ 2 * t26 + 0.1e1);
	t23 = (0.1e1 + t50) * t46;
	t20 = 0.1e1 / t22;
	t19 = 0.1e1 / (t35 * t53 + 0.1e1);
	t1 = [t33 * t32 * t49, 0, t23, 0, 0, 0; (-t20 * t45 + (-t30 * t33 * t35 * t46 + (-t32 + 0.1e1) * t37 * t29) * t37 * t53) * t19, 0, (t36 * t20 + (t42 * t51 + t30 * t37 + (-t30 * t45 - t51) * t23) * t37 * t21) * t41 * t19, 0, 0, 0; ((t36 * t44 + t47) * t25 - (t36 * t43 - t48) * t52) * t24, 0, (t25 * t39 - t40 * t52) * t24 * t49, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 00:24:00
	% EndTime: 2019-10-10 00:24:01
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (263->21), mult. (224->54), div. (52->9), fcn. (332->9), ass. (0->37)
	t53 = qJ(3) + pkin(9);
	t49 = sin(t53);
	t51 = cos(t53);
	t55 = cos(qJ(1));
	t57 = t55 * t51;
	t43 = atan2(-t57, t49);
	t41 = sin(t43);
	t42 = cos(t43);
	t34 = -t41 * t57 + t42 * t49;
	t33 = 0.1e1 / t34 ^ 2;
	t54 = sin(qJ(1));
	t67 = t33 * t54 ^ 2;
	t52 = pkin(10) + qJ(6);
	t48 = sin(t52);
	t59 = t55 * t48;
	t50 = cos(t52);
	t61 = t54 * t50;
	t40 = t49 * t61 + t59;
	t38 = 0.1e1 / t40 ^ 2;
	t58 = t55 * t50;
	t62 = t54 * t48;
	t39 = t49 * t62 - t58;
	t66 = t38 * t39;
	t65 = t41 * t49;
	t47 = t51 ^ 2;
	t64 = 0.1e1 / t49 ^ 2 * t47;
	t63 = t51 * t54;
	t44 = 0.1e1 / (t55 ^ 2 * t64 + 0.1e1);
	t60 = t55 * t44;
	t56 = t39 ^ 2 * t38 + 0.1e1;
	t45 = 0.1e1 / t49;
	t37 = 0.1e1 / t40;
	t36 = (0.1e1 + t64) * t60;
	t35 = 0.1e1 / t56;
	t32 = 0.1e1 / t34;
	t31 = 0.1e1 / (t47 * t67 + 0.1e1);
	t1 = [t45 * t44 * t63, 0, t36, 0, 0, 0; (-t32 * t57 + (-t42 * t45 * t47 * t60 + (-t44 + 0.1e1) * t51 * t41) * t51 * t67) * t31, 0, (t49 * t32 + (t55 * t65 + t42 * t51 + (-t42 * t57 - t65) * t36) * t51 * t33) * t54 * t31, 0, 0, 0; ((t49 * t59 + t61) * t37 - (t49 * t58 - t62) * t66) * t35, 0, (t37 * t48 - t50 * t66) * t35 * t63, 0, 0, t56 * t35;];
	Ja_rot = t1;
else
	Ja_rot=NaN(3,6);
end