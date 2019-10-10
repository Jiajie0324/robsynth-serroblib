% Rotatorische Teilmatrix der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RPRRRP2
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,theta2]';
% 
% Output:
% JR_rot [9x6]
%   Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 01:47
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JR_rot = S6RPRRRP2_jacobiR_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP2_jacobiR_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RPRRRP2_jacobiR_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRP2_jacobiR_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiR_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:47:08
	% EndTime: 2019-10-10 01:47:08
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiR_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:47:08
	% EndTime: 2019-10-10 01:47:08
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
	% StartTime: 2019-10-10 01:47:08
	% EndTime: 2019-10-10 01:47:08
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
	% StartTime: 2019-10-10 01:47:08
	% EndTime: 2019-10-10 01:47:08
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
	% StartTime: 2019-10-10 01:47:08
	% EndTime: 2019-10-10 01:47:08
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
	% StartTime: 2019-10-10 01:47:08
	% EndTime: 2019-10-10 01:47:08
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (86->18), mult. (54->20), div. (0->0), fcn. (93->6), ass. (0->17)
	t88 = qJ(4) + qJ(5);
	t85 = sin(t88);
	t89 = sin(qJ(3));
	t94 = t89 * t85;
	t86 = cos(t88);
	t93 = t89 * t86;
	t90 = cos(qJ(3));
	t92 = t90 * t85;
	t91 = t90 * t86;
	t87 = qJ(1) + pkin(10);
	t84 = cos(t87);
	t83 = sin(t87);
	t82 = t83 * t85 + t84 * t91;
	t81 = t83 * t86 - t84 * t92;
	t80 = -t83 * t91 + t84 * t85;
	t79 = t83 * t92 + t84 * t86;
	t1 = [t80, 0, -t84 * t93, t81, t81, 0; t82, 0, -t83 * t93, -t79, -t79, 0; 0, 0, t91, -t94, -t94, 0; t79, 0, t84 * t94, -t82, -t82, 0; t81, 0, t83 * t94, t80, t80, 0; 0, 0, -t92, -t93, -t93, 0; -t83 * t89, 0, t84 * t90, 0, 0, 0; t84 * t89, 0, t83 * t90, 0, 0, 0; 0, 0, t89, 0, 0, 0;];
	JR_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiR_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:47:08
	% EndTime: 2019-10-10 01:47:09
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (86->18), mult. (54->20), div. (0->0), fcn. (93->6), ass. (0->17)
	t89 = qJ(4) + qJ(5);
	t86 = sin(t89);
	t90 = sin(qJ(3));
	t95 = t90 * t86;
	t87 = cos(t89);
	t94 = t90 * t87;
	t91 = cos(qJ(3));
	t93 = t91 * t86;
	t92 = t91 * t87;
	t88 = qJ(1) + pkin(10);
	t85 = cos(t88);
	t84 = sin(t88);
	t83 = t84 * t86 + t85 * t92;
	t82 = t84 * t87 - t85 * t93;
	t81 = -t84 * t92 + t85 * t86;
	t80 = t84 * t93 + t85 * t87;
	t1 = [t81, 0, -t85 * t94, t82, t82, 0; t83, 0, -t84 * t94, -t80, -t80, 0; 0, 0, t92, -t95, -t95, 0; t80, 0, t85 * t95, -t83, -t83, 0; t82, 0, t84 * t95, t81, t81, 0; 0, 0, -t93, -t94, -t94, 0; -t84 * t90, 0, t85 * t91, 0, 0, 0; t85 * t90, 0, t84 * t91, 0, 0, 0; 0, 0, t90, 0, 0, 0;];
	JR_rot = t1;
else
	JR_rot=NaN(9,6);
end