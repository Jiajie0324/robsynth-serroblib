% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RPRRPR2
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
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d6,theta2,theta5]';
% 
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 01:25
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RPRRPR2_jacobiR_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPR2_jacobiR_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RPRRPR2_jacobiR_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRRPR2_jacobiR_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiR_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:25:14
	% EndTime: 2019-10-10 01:25:14
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiR_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:25:14
	% EndTime: 2019-10-10 01:25:14
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
	% StartTime: 2019-10-10 01:25:14
	% EndTime: 2019-10-10 01:25:14
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (7->4), mult. (0->0), div. (0->0), fcn. (4->2), ass. (0->4)
	t12 = qJ(1) + pkin(10);
	t11 = cos(t12);
	t10 = sin(t12);
	t1 = [-t10, 0, 0, 0, 0, 0; t11, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; -t11, 0, 0, 0, 0, 0; -t10, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiR_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:25:14
	% EndTime: 2019-10-10 01:25:14
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (17->8), mult. (8->4), div. (0->0), fcn. (20->4), ass. (0->10)
	t13 = qJ(1) + pkin(10);
	t11 = sin(t13);
	t14 = sin(qJ(3));
	t19 = t11 * t14;
	t15 = cos(qJ(3));
	t18 = t11 * t15;
	t12 = cos(t13);
	t17 = t12 * t14;
	t16 = t12 * t15;
	t1 = [-t18, 0, -t17, 0, 0, 0; t16, 0, -t19, 0, 0, 0; 0, 0, t15, 0, 0, 0; t19, 0, -t16, 0, 0, 0; -t17, 0, -t18, 0, 0, 0; 0, 0, -t14, 0, 0, 0; t12, 0, 0, 0, 0, 0; t11, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiR_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:25:14
	% EndTime: 2019-10-10 01:25:14
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (38->13), mult. (40->20), div. (0->0), fcn. (69->6), ass. (0->16)
	t66 = sin(qJ(4));
	t67 = sin(qJ(3));
	t73 = t67 * t66;
	t68 = cos(qJ(4));
	t72 = t67 * t68;
	t69 = cos(qJ(3));
	t71 = t69 * t66;
	t70 = t69 * t68;
	t65 = qJ(1) + pkin(10);
	t64 = cos(t65);
	t63 = sin(t65);
	t62 = t63 * t66 + t64 * t70;
	t61 = t63 * t68 - t64 * t71;
	t60 = -t63 * t70 + t64 * t66;
	t59 = t63 * t71 + t64 * t68;
	t1 = [t60, 0, -t64 * t72, t61, 0, 0; t62, 0, -t63 * t72, -t59, 0, 0; 0, 0, t70, -t73, 0, 0; t59, 0, t64 * t73, -t62, 0, 0; t61, 0, t63 * t73, t60, 0, 0; 0, 0, -t71, -t72, 0, 0; -t63 * t67, 0, t64 * t69, 0, 0, 0; t64 * t67, 0, t63 * t69, 0, 0, 0; 0, 0, t67, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiR_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:25:14
	% EndTime: 2019-10-10 01:25:14
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (62->14), mult. (40->20), div. (0->0), fcn. (69->6), ass. (0->17)
	t75 = qJ(4) + pkin(11);
	t71 = sin(t75);
	t77 = sin(qJ(3));
	t82 = t77 * t71;
	t73 = cos(t75);
	t81 = t77 * t73;
	t78 = cos(qJ(3));
	t80 = t78 * t71;
	t79 = t78 * t73;
	t76 = qJ(1) + pkin(10);
	t74 = cos(t76);
	t72 = sin(t76);
	t70 = t72 * t71 + t74 * t79;
	t69 = t72 * t73 - t74 * t80;
	t68 = t74 * t71 - t72 * t79;
	t67 = t72 * t80 + t74 * t73;
	t1 = [t68, 0, -t74 * t81, t69, 0, 0; t70, 0, -t72 * t81, -t67, 0, 0; 0, 0, t79, -t82, 0, 0; t67, 0, t74 * t82, -t70, 0, 0; t69, 0, t72 * t82, t68, 0, 0; 0, 0, -t80, -t81, 0, 0; -t72 * t77, 0, t74 * t78, 0, 0, 0; t74 * t77, 0, t72 * t78, 0, 0, 0; 0, 0, t77, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiR_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:25:14
	% EndTime: 2019-10-10 01:25:14
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (120->18), mult. (54->20), div. (0->0), fcn. (93->6), ass. (0->17)
	t87 = qJ(4) + pkin(11) + qJ(6);
	t83 = sin(t87);
	t89 = sin(qJ(3));
	t94 = t89 * t83;
	t84 = cos(t87);
	t93 = t89 * t84;
	t90 = cos(qJ(3));
	t92 = t90 * t83;
	t91 = t90 * t84;
	t88 = qJ(1) + pkin(10);
	t86 = cos(t88);
	t85 = sin(t88);
	t82 = t85 * t83 + t86 * t91;
	t81 = t85 * t84 - t86 * t92;
	t80 = t86 * t83 - t85 * t91;
	t79 = t86 * t84 + t85 * t92;
	t1 = [t80, 0, -t86 * t93, t81, 0, t81; t82, 0, -t85 * t93, -t79, 0, -t79; 0, 0, t91, -t94, 0, -t94; t79, 0, t86 * t94, -t82, 0, -t82; t81, 0, t85 * t94, t80, 0, t80; 0, 0, -t92, -t93, 0, -t93; -t85 * t89, 0, t86 * t90, 0, 0, 0; t86 * t89, 0, t85 * t90, 0, 0, 0; 0, 0, t89, 0, 0, 0;];
	JR_rot = t1;
else
	JR_rot=NaN(9,6);
end