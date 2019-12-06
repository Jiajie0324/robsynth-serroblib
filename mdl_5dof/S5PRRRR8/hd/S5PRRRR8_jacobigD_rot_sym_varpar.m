% Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix für beliebiges Segment von
% S5PRRRR8
% Use Code from Maple symbolic Code Generation
%
% Geometrische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorgeschwindigkeit und Geschw. der verallgemeinerten Koordinaten.
% 
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt. (0=Basis).
%   Siehe auch: bsp_3T1R_fkine_fixb_rotmat_mdh_sym_varpar.m
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d2,d3,d4,d5,theta1]';
% 
% Output:
% JgD_rot [3x5]
%   Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 17:17
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD_rot = S5PRRRR8_jacobigD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRR8_jacobigD_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRRR8_jacobigD_rot_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5PRRRR8_jacobigD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S5PRRRR8_jacobigD_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobigD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 17:17:45
	% EndTime: 2019-12-05 17:17:45
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobigD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 17:17:45
	% EndTime: 2019-12-05 17:17:45
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobigD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 17:17:45
	% EndTime: 2019-12-05 17:17:45
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobigD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 17:17:45
	% EndTime: 2019-12-05 17:17:45
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (2->2), mult. (12->9), div. (0->0), fcn. (12->6), ass. (0->6)
	t82 = sin(qJ(2));
	t84 = cos(pkin(5)) * t82;
	t83 = cos(qJ(2));
	t80 = cos(pkin(10));
	t79 = sin(pkin(10));
	t1 = [0, 0, (-t79 * t84 + t80 * t83) * qJD(2), 0, 0; 0, 0, (t79 * t83 + t80 * t84) * qJD(2), 0, 0; 0, 0, sin(pkin(5)) * qJD(2) * t82, 0, 0;];
	JgD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobigD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 17:17:45
	% EndTime: 2019-12-05 17:17:45
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (4->2), mult. (24->9), div. (0->0), fcn. (24->6), ass. (0->9)
	t111 = sin(qJ(2));
	t113 = cos(pkin(5)) * t111;
	t112 = cos(qJ(2));
	t109 = cos(pkin(10));
	t108 = sin(pkin(10));
	t107 = sin(pkin(5)) * qJD(2) * t111;
	t106 = (-t108 * t113 + t109 * t112) * qJD(2);
	t105 = (t108 * t112 + t109 * t113) * qJD(2);
	t1 = [0, 0, t106, t106, 0; 0, 0, t105, t105, 0; 0, 0, t107, t107, 0;];
	JgD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobigD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 17:17:46
	% EndTime: 2019-12-05 17:17:46
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (29->12), mult. (60->30), div. (0->0), fcn. (62->8), ass. (0->21)
	t171 = qJ(3) + qJ(4);
	t168 = sin(t171);
	t173 = sin(pkin(5));
	t184 = t173 * t168;
	t175 = cos(pkin(5));
	t176 = sin(qJ(2));
	t183 = t175 * t176;
	t177 = cos(qJ(2));
	t182 = t175 * t177;
	t181 = qJD(2) * t168;
	t180 = qJD(2) * t173;
	t172 = sin(pkin(10));
	t174 = cos(pkin(10));
	t179 = t172 * t177 + t174 * t183;
	t178 = -t172 * t183 + t174 * t177;
	t170 = qJD(3) + qJD(4);
	t169 = cos(t171);
	t167 = t176 * t180;
	t166 = t178 * qJD(2);
	t165 = t179 * qJD(2);
	t1 = [0, 0, t166, t166, (t178 * t169 + t172 * t184) * t170 + (-t172 * t182 - t174 * t176) * t181; 0, 0, t165, t165, (t179 * t169 - t174 * t184) * t170 + (-t172 * t176 + t174 * t182) * t181; 0, 0, t167, t167, t173 * t176 * t170 * t169 + (t170 * t175 + t177 * t180) * t168;];
	JgD_rot = t1;
else
	JgD_rot=NaN(3,5);
end