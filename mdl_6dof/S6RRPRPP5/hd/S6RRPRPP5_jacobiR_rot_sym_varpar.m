% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RRPRPP5
% Use Code from Maple symbolic Code Generation
% 
% Rotationsmatrix-Jacobi-Matrix: Differentieller Zusammenhang zwischen
% gestapelter Endeffektor-Rotationsmatrix und verallgemeinerten Koordinaten.
% 
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt. (0=Basis).
%   Siehe auch: bsp_3T1R_fkine_fixb_rotmat_mdh_sym_varpar.m
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4]';
% 
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 10:02
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RRPRPP5_jacobiR_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPP5_jacobiR_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPRPP5_jacobiR_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RRPRPP5_jacobiR_rot_sym_varpar: pkin has to be [8x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiR_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:02:41
	% EndTime: 2019-10-10 10:02:41
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiR_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:02:41
	% EndTime: 2019-10-10 10:02:41
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (3->3), mult. (0->0), div. (0->0), fcn. (4->2), ass. (0->3)
	t9 = cos(qJ(1));
	t8 = sin(qJ(1));
	t1 = [-t8, 0, 0, 0, 0, 0; t9, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; -t9, 0, 0, 0, 0, 0; -t8, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiR_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:02:41
	% EndTime: 2019-10-10 10:02:41
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (7->7), mult. (8->4), div. (0->0), fcn. (20->4), ass. (0->9)
	t10 = sin(qJ(1));
	t9 = sin(qJ(2));
	t16 = t10 * t9;
	t12 = cos(qJ(1));
	t15 = t12 * t9;
	t11 = cos(qJ(2));
	t14 = t10 * t11;
	t13 = t12 * t11;
	t1 = [-t14, -t15, 0, 0, 0, 0; t13, -t16, 0, 0, 0, 0; 0, t11, 0, 0, 0, 0; t16, -t13, 0, 0, 0, 0; -t15, -t14, 0, 0, 0, 0; 0, -t9, 0, 0, 0, 0; t12, 0, 0, 0, 0, 0; t10, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiR_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:02:41
	% EndTime: 2019-10-10 10:02:41
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (3->3), mult. (8->4), div. (0->0), fcn. (20->4), ass. (0->9)
	t41 = sin(qJ(2));
	t42 = sin(qJ(1));
	t46 = t42 * t41;
	t43 = cos(qJ(2));
	t44 = cos(qJ(1));
	t45 = t44 * t43;
	t40 = t44 * t41;
	t39 = t42 * t43;
	t1 = [t44, 0, 0, 0, 0, 0; t42, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; t39, t40, 0, 0, 0, 0; -t45, t46, 0, 0, 0, 0; 0, -t43, 0, 0, 0, 0; -t46, t45, 0, 0, 0, 0; t40, t39, 0, 0, 0, 0; 0, t41, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiR_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:02:41
	% EndTime: 2019-10-10 10:02:41
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (12->10), mult. (40->20), div. (0->0), fcn. (69->6), ass. (0->18)
	t65 = sin(qJ(2));
	t66 = sin(qJ(1));
	t76 = t66 * t65;
	t67 = cos(qJ(4));
	t75 = t66 * t67;
	t64 = sin(qJ(4));
	t68 = cos(qJ(2));
	t74 = t68 * t64;
	t73 = t68 * t67;
	t69 = cos(qJ(1));
	t72 = t69 * t65;
	t71 = t69 * t67;
	t70 = t69 * t68;
	t63 = -t64 * t76 + t71;
	t62 = t69 * t64 + t65 * t75;
	t61 = t64 * t72 + t75;
	t60 = -t66 * t64 + t65 * t71;
	t1 = [t63, t64 * t70, 0, t60, 0, 0; t61, t66 * t74, 0, t62, 0, 0; 0, t65 * t64, 0, -t73, 0, 0; -t62, t67 * t70, 0, -t61, 0, 0; t60, t66 * t73, 0, t63, 0, 0; 0, t65 * t67, 0, t74, 0, 0; -t66 * t68, -t72, 0, 0, 0, 0; t70, -t76, 0, 0, 0, 0; 0, t68, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiR_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:02:41
	% EndTime: 2019-10-10 10:02:41
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (16->14), mult. (40->20), div. (0->0), fcn. (69->6), ass. (0->18)
	t76 = sin(qJ(2));
	t77 = sin(qJ(1));
	t87 = t77 * t76;
	t78 = cos(qJ(4));
	t86 = t77 * t78;
	t75 = sin(qJ(4));
	t79 = cos(qJ(2));
	t85 = t79 * t75;
	t84 = t79 * t78;
	t80 = cos(qJ(1));
	t83 = t80 * t76;
	t82 = t80 * t78;
	t81 = t80 * t79;
	t74 = -t75 * t87 + t82;
	t73 = t80 * t75 + t76 * t86;
	t72 = t75 * t83 + t86;
	t71 = t77 * t75 - t76 * t82;
	t1 = [t74, t75 * t81, 0, -t71, 0, 0; t72, t77 * t85, 0, t73, 0, 0; 0, t76 * t75, 0, -t84, 0, 0; -t77 * t79, -t83, 0, 0, 0, 0; t81, -t87, 0, 0, 0, 0; 0, t79, 0, 0, 0, 0; t73, -t78 * t81, 0, t72, 0, 0; t71, -t77 * t84, 0, -t74, 0, 0; 0, -t76 * t78, 0, -t85, 0, 0;];
	JR_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiR_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:02:41
	% EndTime: 2019-10-10 10:02:41
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (15->13), mult. (40->20), div. (0->0), fcn. (69->6), ass. (0->18)
	t69 = sin(qJ(2));
	t70 = sin(qJ(1));
	t80 = t70 * t69;
	t71 = cos(qJ(4));
	t79 = t70 * t71;
	t68 = sin(qJ(4));
	t72 = cos(qJ(2));
	t78 = t72 * t68;
	t77 = t72 * t71;
	t73 = cos(qJ(1));
	t76 = t73 * t69;
	t75 = t73 * t71;
	t74 = t73 * t72;
	t67 = -t68 * t80 + t75;
	t66 = t73 * t68 + t69 * t79;
	t65 = t68 * t76 + t79;
	t64 = t70 * t68 - t69 * t75;
	t1 = [t67, t68 * t74, 0, -t64, 0, 0; t65, t70 * t78, 0, t66, 0, 0; 0, t69 * t68, 0, -t77, 0, 0; t66, -t71 * t74, 0, t65, 0, 0; t64, -t70 * t77, 0, -t67, 0, 0; 0, -t69 * t71, 0, -t78, 0, 0; t70 * t72, t76, 0, 0, 0, 0; -t74, t80, 0, 0, 0, 0; 0, -t72, 0, 0, 0, 0;];
	JR_rot = t1;
else
	JR_rot=NaN(9,6);
end