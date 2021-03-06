% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6RPPRPR4
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
%   Wie in S6RPPRPR4_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d6,theta3,theta5]';
% 
% Output:
% Ja_rot [3x6]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 23:39
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S6RPPRPR4_jacobia_rot_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRPR4_jacobia_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RPPRPR4_jacobia_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPRPR4_jacobia_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:39:24
	% EndTime: 2019-10-09 23:39:24
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:39:24
	% EndTime: 2019-10-09 23:39:24
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (3->0), mult. (6->0), div. (5->0), fcn. (6->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 1, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:39:24
	% EndTime: 2019-10-09 23:39:24
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:39:24
	% EndTime: 2019-10-09 23:39:24
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (11->0), mult. (22->0), div. (6->0), fcn. (32->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; -1, 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:39:24
	% EndTime: 2019-10-09 23:39:24
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:39:24
	% EndTime: 2019-10-09 23:39:24
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobia_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:39:24
	% EndTime: 2019-10-09 23:39:24
	% DurationCPUTime: 0.13s
	% Computational Cost: add. (325->21), mult. (442->61), div. (52->9), fcn. (659->11), ass. (0->39)
	t62 = sin(pkin(9));
	t63 = cos(pkin(9));
	t73 = sin(qJ(1));
	t74 = cos(qJ(1));
	t46 = -t73 * t62 - t74 * t63;
	t75 = t46 ^ 2;
	t58 = qJ(4) + pkin(10);
	t57 = cos(t58);
	t47 = t74 * t62 - t73 * t63;
	t56 = sin(t58);
	t67 = t47 * t56;
	t44 = atan2(t67, t57);
	t42 = sin(t44);
	t43 = cos(t44);
	t36 = t42 * t67 + t43 * t57;
	t35 = 0.1e1 / t36 ^ 2;
	t72 = t35 * t56;
	t59 = sin(qJ(6));
	t60 = cos(qJ(6));
	t64 = t57 * t60;
	t41 = -t46 * t64 + t47 * t59;
	t39 = 0.1e1 / t41 ^ 2;
	t65 = t57 * t59;
	t40 = -t46 * t65 - t47 * t60;
	t71 = t39 * t40;
	t70 = t42 * t57;
	t69 = t46 * t56;
	t53 = t56 ^ 2;
	t66 = t53 / t57 ^ 2;
	t45 = 0.1e1 / (t47 ^ 2 * t66 + 0.1e1);
	t68 = t47 * t45;
	t61 = t40 ^ 2 * t39 + 0.1e1;
	t54 = 0.1e1 / t57;
	t38 = 0.1e1 / t41;
	t37 = 0.1e1 / t61;
	t34 = 0.1e1 / t36;
	t33 = (0.1e1 + t66) * t68;
	t32 = 0.1e1 / (t75 * t53 * t35 + 0.1e1);
	t1 = [t54 * t45 * t69, 0, 0, t33, 0, 0; (t34 * t67 + (t43 * t53 * t54 * t68 + (-t45 + 0.1e1) * t56 * t42) * t75 * t72) * t32, 0, 0, (-t57 * t34 + (t47 * t70 - t43 * t56 + (t43 * t67 - t70) * t33) * t72) * t46 * t32, 0, 0; ((-t46 * t60 + t47 * t65) * t38 - (t46 * t59 + t47 * t64) * t71) * t37, 0, 0, (t38 * t59 - t60 * t71) * t37 * t69, 0, t61 * t37;];
	Ja_rot = t1;
else
	Ja_rot=NaN(3,6);
end