% Rotatorische Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S5RRRRR2
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
%   Wie in S5RRRRR2_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [2x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a4]';
% 
% Output:
% Ja_rot [3x5]
%   Rotatorische Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:54
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Ja_rot = S5RRRRR2_jacobia_rot_sym_varpar(qJ, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),uint8(0),zeros(2,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR2_jacobia_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RRRRR2_jacobia_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [2 1]), ...
  'S5RRRRR2_jacobia_rot_sym_varpar: pkin has to be [2x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobia_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 18:54:12
	% EndTime: 2019-12-05 18:54:12
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobia_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 18:54:12
	% EndTime: 2019-12-05 18:54:12
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (3->0), mult. (6->0), div. (5->0), fcn. (6->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 1, 0, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobia_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 18:54:12
	% EndTime: 2019-12-05 18:54:12
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (18->0), mult. (12->0), div. (10->0), fcn. (12->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 1, 1, 0, 0, 0;];
	Ja_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobia_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 18:54:13
	% EndTime: 2019-12-05 18:54:13
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobia_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 18:54:12
	% EndTime: 2019-12-05 18:54:12
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN; NaN, NaN, NaN, NaN, NaN;];
	Ja_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobia_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 18:54:13
	% EndTime: 2019-12-05 18:54:13
	% DurationCPUTime: 0.13s
	% Computational Cost: add. (663->22), mult. (421->53), div. (99->9), fcn. (629->9), ass. (0->42)
	t69 = qJ(3) + qJ(4);
	t67 = cos(t69);
	t65 = sin(t69);
	t70 = qJ(1) + qJ(2);
	t66 = sin(t70);
	t78 = t66 * t65;
	t60 = atan2(-t78, -t67);
	t58 = sin(t60);
	t59 = cos(t60);
	t50 = -t58 * t78 - t59 * t67;
	t49 = 0.1e1 / t50 ^ 2;
	t68 = cos(t70);
	t84 = t49 * t68 ^ 2;
	t72 = cos(qJ(5));
	t74 = t68 * t72;
	t71 = sin(qJ(5));
	t77 = t66 * t71;
	t57 = t67 * t74 + t77;
	t55 = 0.1e1 / t57 ^ 2;
	t75 = t68 * t71;
	t76 = t66 * t72;
	t56 = t67 * t75 - t76;
	t83 = t55 * t56;
	t82 = t58 * t67;
	t62 = t65 ^ 2;
	t81 = t62 / t67 ^ 2;
	t80 = t65 * t68;
	t61 = 0.1e1 / (t66 ^ 2 * t81 + 0.1e1);
	t79 = t66 * t61;
	t73 = t56 ^ 2 * t55 + 0.1e1;
	t63 = 0.1e1 / t67;
	t54 = 0.1e1 / t57;
	t53 = t63 * t61 * t80;
	t52 = 0.1e1 / t73;
	t51 = (0.1e1 + t81) * t79;
	t48 = 0.1e1 / t50;
	t47 = 0.1e1 / (t62 * t84 + 0.1e1);
	t46 = (-t54 * t71 + t72 * t83) * t52 * t80;
	t45 = ((-t67 * t77 - t74) * t54 - (-t67 * t76 + t75) * t83) * t52;
	t44 = (-t48 * t78 - (-t59 * t62 * t63 * t79 + (t61 - 0.1e1) * t65 * t58) * t65 * t84) * t47;
	t43 = (t67 * t48 - (-t66 * t82 + t59 * t65 + (-t59 * t78 + t82) * t51) * t65 * t49) * t68 * t47;
	t1 = [t53, t53, t51, t51, 0; t44, t44, t43, t43, 0; t45, t45, t46, t46, t73 * t52;];
	Ja_rot = t1;
else
	Ja_rot=NaN(3,5);
end