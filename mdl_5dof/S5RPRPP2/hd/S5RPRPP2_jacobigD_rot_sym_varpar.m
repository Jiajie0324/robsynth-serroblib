% Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix für beliebiges Segment von
% S5RPRPP2
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
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,theta2]';
% 
% Output:
% JgD_rot [3x5]
%   Zeitableitung der rotatorischen Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 16:35
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JgD_rot = S5RPRPP2_jacobigD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPP2_jacobigD_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRPP2_jacobigD_rot_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RPRPP2_jacobigD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RPRPP2_jacobigD_rot_sym_varpar: pkin has to be [7x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobigD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 16:35:18
	% EndTime: 2019-12-29 16:35:18
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobigD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 16:35:23
	% EndTime: 2019-12-29 16:35:23
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobigD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 16:35:23
	% EndTime: 2019-12-29 16:35:23
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobigD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 16:35:18
	% EndTime: 2019-12-29 16:35:18
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (2->1), mult. (2->2), div. (0->0), fcn. (2->2), ass. (0->2)
	t20 = qJ(1) + pkin(7);
	t1 = [0, 0, qJD(1) * cos(t20), 0, 0; 0, 0, qJD(1) * sin(t20), 0, 0; 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobigD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 16:35:23
	% EndTime: 2019-12-29 16:35:23
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (2->1), mult. (2->2), div. (0->0), fcn. (2->2), ass. (0->2)
	t49 = qJ(1) + pkin(7);
	t1 = [0, 0, qJD(1) * cos(t49), 0, 0; 0, 0, qJD(1) * sin(t49), 0, 0; 0, 0, 0, 0, 0;];
	JgD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobigD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 16:35:23
	% EndTime: 2019-12-29 16:35:23
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (2->1), mult. (2->2), div. (0->0), fcn. (2->2), ass. (0->2)
	t22 = qJ(1) + pkin(7);
	t1 = [0, 0, qJD(1) * cos(t22), 0, 0; 0, 0, qJD(1) * sin(t22), 0, 0; 0, 0, 0, 0, 0;];
	JgD_rot = t1;
else
	JgD_rot=NaN(3,5);
end