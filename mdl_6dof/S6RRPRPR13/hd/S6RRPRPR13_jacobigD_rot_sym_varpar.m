% Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix für beliebiges Segment von
% S6RRPRPR13
% Use Code from Maple symbolic Code Generation
%
% Geometrische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorgeschwindigkeit und Geschw. der verallgemeinerten Koordinaten.
% 
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt. (0=Basis).
%   Siehe auch: bsp_3T1R_fkine_fixb_rotmat_mdh_sym_varpar.m
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d6,theta5]';
% 
% Output:
% JgD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 10:26
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD_rot = S6RRPRPR13_jacobigD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR13_jacobigD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPR13_jacobigD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPRPR13_jacobigD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRPR13_jacobigD_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobigD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:26:24
	% EndTime: 2019-10-10 10:26:24
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobigD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:26:24
	% EndTime: 2019-10-10 10:26:24
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobigD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:26:24
	% EndTime: 2019-10-10 10:26:24
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (4->3), div. (0->0), fcn. (4->3), ass. (0->2)
	t59 = qJD(1) * sin(pkin(6));
	t1 = [0, cos(qJ(1)) * t59, 0, 0, 0, 0; 0, sin(qJ(1)) * t59, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobigD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:26:24
	% EndTime: 2019-10-10 10:26:24
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (0->0), mult. (4->3), div. (0->0), fcn. (4->3), ass. (0->2)
	t71 = qJD(1) * sin(pkin(6));
	t1 = [0, cos(qJ(1)) * t71, 0, 0, 0, 0; 0, sin(qJ(1)) * t71, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobigD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:26:24
	% EndTime: 2019-10-10 10:26:24
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (6->6), mult. (26->17), div. (0->0), fcn. (26->6), ass. (0->12)
	t105 = sin(qJ(2));
	t106 = sin(qJ(1));
	t113 = t105 * t106;
	t108 = cos(qJ(1));
	t112 = t105 * t108;
	t107 = cos(qJ(2));
	t111 = t106 * t107;
	t110 = t107 * t108;
	t103 = sin(pkin(6));
	t109 = qJD(1) * t103;
	t104 = cos(pkin(6));
	t1 = [0, t108 * t109, 0, (-t104 * t111 - t112) * qJD(2) + (-t104 * t112 - t111) * qJD(1), 0, 0; 0, t106 * t109, 0, (t104 * t110 - t113) * qJD(2) + (-t104 * t113 + t110) * qJD(1), 0, 0; 0, 0, 0, t103 * qJD(2) * t107, 0, 0;];
	JgD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobigD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:26:24
	% EndTime: 2019-10-10 10:26:24
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (6->6), mult. (26->17), div. (0->0), fcn. (26->6), ass. (0->12)
	t134 = sin(qJ(2));
	t135 = sin(qJ(1));
	t142 = t134 * t135;
	t137 = cos(qJ(1));
	t141 = t134 * t137;
	t136 = cos(qJ(2));
	t140 = t135 * t136;
	t139 = t136 * t137;
	t132 = sin(pkin(6));
	t138 = qJD(1) * t132;
	t133 = cos(pkin(6));
	t1 = [0, t137 * t138, 0, (-t133 * t140 - t141) * qJD(2) + (-t133 * t141 - t140) * qJD(1), 0, 0; 0, t135 * t138, 0, (t133 * t139 - t142) * qJD(2) + (-t133 * t142 + t139) * qJD(1), 0, 0; 0, 0, 0, t132 * qJD(2) * t136, 0, 0;];
	JgD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobigD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:26:24
	% EndTime: 2019-10-10 10:26:25
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (22->16), mult. (78->39), div. (0->0), fcn. (80->8), ass. (0->22)
	t159 = sin(pkin(6));
	t163 = sin(qJ(1));
	t179 = t159 * t163;
	t165 = cos(qJ(2));
	t178 = t159 * t165;
	t166 = cos(qJ(1));
	t177 = t159 * t166;
	t162 = sin(qJ(2));
	t176 = t163 * t162;
	t175 = t163 * t165;
	t174 = t165 * t166;
	t173 = t166 * t162;
	t172 = qJD(1) * t159;
	t164 = cos(qJ(4));
	t171 = qJD(2) * t164;
	t160 = cos(pkin(6));
	t170 = t160 * t174 - t176;
	t169 = t160 * t175 + t173;
	t168 = t160 * t173 + t175;
	t167 = -t160 * t176 + t174;
	t161 = sin(qJ(4));
	t1 = [0, t166 * t172, 0, -t168 * qJD(1) - t169 * qJD(2), 0, (t169 * t161 + t164 * t179) * qJD(4) - t167 * t171 + (t161 * t177 - t170 * t164) * qJD(1); 0, t163 * t172, 0, t167 * qJD(1) + t170 * qJD(2), 0, (-t170 * t161 - t164 * t177) * qJD(4) - t168 * t171 + (t161 * t179 - t169 * t164) * qJD(1); 0, 0, 0, qJD(2) * t178, 0, -t159 * t162 * t171 + (t160 * t164 - t161 * t178) * qJD(4);];
	JgD_rot = t1;
else
	JgD_rot=NaN(3,6);
end