% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S5RRRRP4
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
%   Wie in S5RRRRP4_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4]';
% 
% Output:
% Ja_rot [3x5]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 20:27
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S5RRRRP4_jacobia_rot_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRP4_jacobia_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RRRRP4_jacobia_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRRRP4_jacobia_rot_sym_varpar: pkin has to be [8x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 20:27:40
	% EndTime: 2019-12-29 20:27:40
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 20:27:40
	% EndTime: 2019-12-29 20:27:40
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (3->0), mult. (6->0), div. (5->0), fcn. (6->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 1, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 20:27:40
	% EndTime: 2019-12-29 20:27:40
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (18->0), mult. (12->0), div. (10->0), fcn. (12->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 1, 1, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 20:27:45
	% EndTime: 2019-12-29 20:27:45
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 20:27:40
	% EndTime: 2019-12-29 20:27:40
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 20:27:45
	% EndTime: 2019-12-29 20:27:45
	% DurationCPUTime: 0.15s
	% Computational Cost: add. (528->19), mult. (290->39), div. (98->9), fcn. (456->7), ass. (0->33)
	t65 = qJ(1) + qJ(2);
	t63 = cos(t65);
	t66 = t63 ^ 2;
	t64 = qJ(3) + qJ(4);
	t62 = cos(t64);
	t60 = sin(t64);
	t61 = sin(t65);
	t68 = t61 * t60;
	t51 = atan2(-t68, -t62);
	t49 = sin(t51);
	t50 = cos(t51);
	t45 = -t49 * t68 - t50 * t62;
	t44 = 0.1e1 / t45 ^ 2;
	t73 = t44 * t60;
	t72 = t49 * t62;
	t54 = t60 ^ 2;
	t57 = 0.1e1 / t62 ^ 2;
	t71 = t54 * t57;
	t55 = t61 ^ 2;
	t70 = t55 / t66;
	t52 = 0.1e1 / (t55 * t71 + 0.1e1);
	t69 = t61 * t52;
	t53 = 0.1e1 / (t57 * t70 + 0.1e1);
	t67 = 0.1e1 / t63 * t57 * t53 * t68;
	t56 = 0.1e1 / t62;
	t48 = t63 * t60 * t56 * t52;
	t47 = (-0.1e1 - t70) * t56 * t53;
	t46 = (0.1e1 + t71) * t69;
	t43 = 0.1e1 / t45;
	t42 = 0.1e1 / (t66 * t54 * t44 + 0.1e1);
	t41 = (-t43 * t68 - (-t50 * t54 * t56 * t69 + (t52 - 0.1e1) * t60 * t49) * t66 * t73) * t42;
	t40 = (t62 * t43 - (-t61 * t72 + t50 * t60 + (-t50 * t68 + t72) * t46) * t73) * t63 * t42;
	t1 = [t48, t48, t46, t46, 0; t41, t41, t40, t40, 0; t47, t47, -t67, -t67, 0;];
	Ja_rot = t1;
else
	Ja_rot=NaN(3,5);
end