% Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix für beliebiges Segment von
% S6RRRRRP4
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5]';
% 
% Output:
% JgD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 13:02
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD_rot = S6RRRRRP4_jacobigD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP4_jacobigD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP4_jacobigD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRRRP4_jacobigD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRRP4_jacobigD_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobigD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:02:07
	% EndTime: 2019-10-10 13:02:07
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobigD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:02:07
	% EndTime: 2019-10-10 13:02:07
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobigD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:02:07
	% EndTime: 2019-10-10 13:02:07
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (2->2), div. (0->0), fcn. (2->2), ass. (0->1)
	t1 = [0, qJD(1) * cos(qJ(1)), 0, 0, 0, 0; 0, qJD(1) * sin(qJ(1)), 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobigD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:02:07
	% EndTime: 2019-10-10 13:02:07
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (4->2), div. (0->0), fcn. (4->2), ass. (0->3)
	t30 = qJD(1) * cos(qJ(1));
	t29 = qJD(1) * sin(qJ(1));
	t1 = [0, t30, t30, 0, 0, 0; 0, t29, t29, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobigD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:02:07
	% EndTime: 2019-10-10 13:02:07
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (10->4), mult. (13->8), div. (0->0), fcn. (13->4), ass. (0->9)
	t116 = qJD(2) + qJD(3);
	t117 = qJ(2) + qJ(3);
	t120 = cos(t117) * t116;
	t118 = sin(qJ(1));
	t112 = qJD(1) * t118;
	t119 = cos(qJ(1));
	t113 = qJD(1) * t119;
	t114 = sin(t117);
	t1 = [0, t113, t113, -t114 * t112 + t119 * t120, 0, 0; 0, t112, t112, t114 * t113 + t118 * t120, 0, 0; 0, 0, 0, t116 * t114, 0, 0;];
	JgD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobigD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:02:07
	% EndTime: 2019-10-10 13:02:07
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (20->4), mult. (22->8), div. (0->0), fcn. (22->4), ass. (0->12)
	t135 = qJD(2) + qJD(3);
	t136 = qJ(2) + qJ(3);
	t139 = cos(t136) * t135;
	t137 = sin(qJ(1));
	t131 = qJD(1) * t137;
	t138 = cos(qJ(1));
	t132 = qJD(1) * t138;
	t133 = sin(t136);
	t130 = t135 * t133;
	t129 = t133 * t132 + t137 * t139;
	t128 = -t133 * t131 + t138 * t139;
	t1 = [0, t132, t132, t128, t128, 0; 0, t131, t131, t129, t129, 0; 0, 0, 0, t130, t130, 0;];
	JgD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobigD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:02:07
	% EndTime: 2019-10-10 13:02:08
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (20->4), mult. (22->8), div. (0->0), fcn. (22->4), ass. (0->12)
	t154 = qJD(2) + qJD(3);
	t155 = qJ(2) + qJ(3);
	t158 = cos(t155) * t154;
	t156 = sin(qJ(1));
	t150 = qJD(1) * t156;
	t157 = cos(qJ(1));
	t151 = qJD(1) * t157;
	t152 = sin(t155);
	t149 = t154 * t152;
	t148 = t152 * t151 + t156 * t158;
	t147 = -t152 * t150 + t157 * t158;
	t1 = [0, t151, t151, t147, t147, 0; 0, t150, t150, t148, t148, 0; 0, 0, 0, t149, t149, 0;];
	JgD_rot = t1;
else
	JgD_rot=NaN(3,6);
end