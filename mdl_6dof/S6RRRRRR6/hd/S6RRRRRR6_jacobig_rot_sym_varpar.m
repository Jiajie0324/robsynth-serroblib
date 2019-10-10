% Rotatorische Teilmatrix der geometrischen Jacobi-Matrix für beliebiges Segment von
% S6RRRRRR6
% Use Code from Maple symbolic Code Generation
%
% Geometrische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorgeschwindigkeit und Geschw. der verallgemeinerten Koordinaten.
% 
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt. (0=Basis).
%   Siehe auch: bsp_3T1R_fkine_fixb_rotmat_mdh_sym_varpar.m
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d5,d6]';
% 
% Output:
% Jg_rot [3x6]
%   Rotatorische Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 13:24
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Jg_rot = S6RRRRRR6_jacobig_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR6_jacobig_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRRRR6_jacobig_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRRR6_jacobig_rot_sym_varpar: pkin has to be [12x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobig_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:24:46
	% EndTime: 2019-10-10 13:24:46
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	Jg_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobig_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:24:46
	% EndTime: 2019-10-10 13:24:46
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 1, 0, 0, 0, 0, 0;];
	Jg_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobig_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:24:46
	% EndTime: 2019-10-10 13:24:46
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (1->1), mult. (2->2), div. (0->0), fcn. (5->4), ass. (0->2)
	t43 = sin(pkin(6));
	t1 = [0, sin(qJ(1)) * t43, 0, 0, 0, 0; 0, -cos(qJ(1)) * t43, 0, 0, 0, 0; 1, cos(pkin(6)), 0, 0, 0, 0;];
	Jg_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobig_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:24:47
	% EndTime: 2019-10-10 13:24:47
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (4->4), mult. (9->8), div. (0->0), fcn. (17->6), ass. (0->8)
	t70 = cos(pkin(6));
	t73 = cos(qJ(2));
	t75 = t70 * t73;
	t74 = cos(qJ(1));
	t72 = sin(qJ(1));
	t71 = sin(qJ(2));
	t69 = sin(pkin(6));
	t1 = [0, t72 * t69, t74 * t71 + t72 * t75, 0, 0, 0; 0, -t74 * t69, t72 * t71 - t74 * t75, 0, 0, 0; 1, t70, -t69 * t73, 0, 0, 0;];
	Jg_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobig_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:24:47
	% EndTime: 2019-10-10 13:24:47
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (7->5), mult. (16->8), div. (0->0), fcn. (29->6), ass. (0->11)
	t86 = sin(pkin(6));
	t90 = cos(qJ(2));
	t93 = t86 * t90;
	t87 = cos(pkin(6));
	t92 = t87 * t90;
	t91 = cos(qJ(1));
	t89 = sin(qJ(1));
	t88 = sin(qJ(2));
	t85 = t91 * t88 + t89 * t92;
	t84 = t89 * t88 - t91 * t92;
	t1 = [0, t89 * t86, t85, t85, 0, 0; 0, -t91 * t86, t84, t84, 0, 0; 1, t87, -t93, -t93, 0, 0;];
	Jg_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobig_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:24:47
	% EndTime: 2019-10-10 13:24:47
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (18->11), mult. (31->18), div. (0->0), fcn. (52->8), ass. (0->19)
	t130 = sin(pkin(6));
	t134 = cos(qJ(2));
	t142 = t130 * t134;
	t133 = sin(qJ(1));
	t141 = t133 * t130;
	t132 = sin(qJ(2));
	t140 = t133 * t132;
	t139 = t133 * t134;
	t135 = cos(qJ(1));
	t138 = t135 * t130;
	t137 = t135 * t132;
	t136 = t135 * t134;
	t131 = cos(pkin(6));
	t129 = qJ(3) + qJ(4);
	t128 = cos(t129);
	t127 = sin(t129);
	t126 = t131 * t139 + t137;
	t125 = -t131 * t136 + t140;
	t1 = [0, t141, t126, t126, (-t131 * t140 + t136) * t127 - t128 * t141, 0; 0, -t138, t125, t125, (t131 * t137 + t139) * t127 + t128 * t138, 0; 1, t131, -t142, -t142, t130 * t132 * t127 - t131 * t128, 0;];
	Jg_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobig_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:24:47
	% EndTime: 2019-10-10 13:24:47
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (29->11), mult. (46->18), div. (0->0), fcn. (75->8), ass. (0->22)
	t147 = sin(pkin(6));
	t151 = cos(qJ(2));
	t159 = t147 * t151;
	t150 = sin(qJ(1));
	t158 = t150 * t147;
	t149 = sin(qJ(2));
	t157 = t150 * t149;
	t156 = t150 * t151;
	t152 = cos(qJ(1));
	t155 = t152 * t147;
	t154 = t152 * t149;
	t153 = t152 * t151;
	t148 = cos(pkin(6));
	t146 = qJ(3) + qJ(4);
	t145 = cos(t146);
	t144 = sin(t146);
	t143 = t148 * t156 + t154;
	t142 = -t148 * t153 + t157;
	t141 = t147 * t149 * t144 - t148 * t145;
	t140 = (-t148 * t157 + t153) * t144 - t145 * t158;
	t139 = (t148 * t154 + t156) * t144 + t145 * t155;
	t1 = [0, t158, t143, t143, t140, t140; 0, -t155, t142, t142, t139, t139; 1, t148, -t159, -t159, t141, t141;];
	Jg_rot = t1;
else
	Jg_rot=NaN(3,6);
end