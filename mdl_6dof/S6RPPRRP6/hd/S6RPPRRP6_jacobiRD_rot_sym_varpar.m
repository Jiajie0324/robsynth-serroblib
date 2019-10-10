% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RPPRRP6
% Use Code from Maple symbolic Code Generation
% 
% Rotationsmatrix-Jacobi-Matrix: Differentieller Zusammenhang zwischen
% gestapelter Endeffektor-Rotationsmatrix und verallgemeinerten Koordinaten.
% Zeitableitung: Die Gradientenmatrix wird nochmal nach der Zeit abgeleitet.
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt. (0=Basis).
%   Siehe auch: bsp_3T1R_fkine_fixb_rotmat_mdh_sym_varpar.m
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5]';
% 
% Output:
% JRD_rot [9x6]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 23:56
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S6RPPRRP6_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRP6_jacobiRD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRP6_jacobiRD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RPPRRP6_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RPPRRP6_jacobiRD_rot_sym_varpar: pkin has to be [8x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:56:17
	% EndTime: 2019-10-09 23:56:17
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:56:17
	% EndTime: 2019-10-09 23:56:17
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (3->3), mult. (4->2), div. (0->0), fcn. (4->2), ass. (0->3)
	t31 = qJD(1) * sin(qJ(1));
	t30 = qJD(1) * cos(qJ(1));
	t1 = [-t30, 0, 0, 0, 0, 0; -t31, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; t31, 0, 0, 0, 0, 0; -t30, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiRD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:56:17
	% EndTime: 2019-10-09 23:56:17
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (1->1), mult. (4->2), div. (0->0), fcn. (4->2), ass. (0->3)
	t13 = qJD(1) * sin(qJ(1));
	t11 = qJD(1) * cos(qJ(1));
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; t11, 0, 0, 0, 0, 0; t13, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; -t13, 0, 0, 0, 0, 0; t11, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiRD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:56:17
	% EndTime: 2019-10-09 23:56:17
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (3->3), mult. (4->2), div. (0->0), fcn. (4->2), ass. (0->3)
	t16 = qJD(1) * sin(qJ(1));
	t15 = qJD(1) * cos(qJ(1));
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; -t16, 0, 0, 0, 0, 0; t15, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; -t15, 0, 0, 0, 0, 0; -t16, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:56:18
	% EndTime: 2019-10-09 23:56:18
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (10->8), mult. (36->13), div. (0->0), fcn. (36->4), ass. (0->14)
	t35 = sin(qJ(1));
	t42 = qJD(1) * t35;
	t37 = cos(qJ(1));
	t41 = qJD(1) * t37;
	t34 = sin(qJ(4));
	t40 = qJD(4) * t34;
	t36 = cos(qJ(4));
	t39 = qJD(4) * t36;
	t38 = qJD(4) * t37;
	t33 = -t35 * t40 + t36 * t41;
	t32 = -t34 * t41 - t35 * t39;
	t31 = -t34 * t38 - t36 * t42;
	t30 = t34 * t42 - t36 * t38;
	t1 = [t32, 0, 0, t31, 0, 0; -t30, 0, 0, t33, 0, 0; 0, 0, 0, -t39, 0, 0; -t33, 0, 0, t30, 0, 0; t31, 0, 0, t32, 0, 0; 0, 0, 0, t40, 0, 0; t42, 0, 0, 0, 0, 0; -t41, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:56:19
	% EndTime: 2019-10-09 23:56:19
	% DurationCPUTime: 0.11s
	% Computational Cost: add. (49->24), mult. (173->45), div. (0->0), fcn. (173->6), ass. (0->32)
	t241 = cos(qJ(5));
	t243 = cos(qJ(1));
	t264 = t241 * t243;
	t240 = sin(qJ(1));
	t263 = qJD(1) * t240;
	t262 = qJD(1) * t243;
	t239 = sin(qJ(4));
	t261 = qJD(4) * t239;
	t242 = cos(qJ(4));
	t260 = qJD(4) * t242;
	t259 = qJD(4) * t243;
	t258 = qJD(5) * t239;
	t257 = qJD(5) * t242;
	t256 = t242 * t262;
	t255 = t241 * t260;
	t254 = t240 * t260;
	t238 = sin(qJ(5));
	t253 = t238 * t257;
	t252 = t241 * t257;
	t251 = t242 * t259;
	t250 = qJD(1) + t258;
	t249 = qJD(1) * t239 + qJD(5);
	t248 = t250 * t238;
	t247 = -t240 * t261 + t256;
	t246 = t239 * t259 + t242 * t263;
	t245 = t241 * t261 + t253;
	t244 = t249 * t240 - t251;
	t237 = -t249 * t264 + (t248 - t255) * t240;
	t236 = t250 * t241 * t240 + (t249 * t243 + t254) * t238;
	t235 = t244 * t241 + t243 * t248;
	t234 = t244 * t238 - t250 * t264;
	t1 = [t237, 0, 0, -t246 * t241 - t243 * t253, t234, 0; -t235, 0, 0, -t245 * t240 + t241 * t256, -t236, 0; 0, 0, 0, t238 * t258 - t255, t238 * t261 - t252, 0; t236, 0, 0, t246 * t238 - t243 * t252, t235, 0; t234, 0, 0, -t247 * t238 - t240 * t252, t237, 0; 0, 0, 0, t238 * t260 + t241 * t258, t245, 0; t247, 0, 0, -t239 * t263 + t251, 0, 0; t246, 0, 0, t239 * t262 + t254, 0, 0; 0, 0, 0, -t261, 0, 0;];
	JRD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiRD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:56:20
	% EndTime: 2019-10-09 23:56:20
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (49->24), mult. (173->45), div. (0->0), fcn. (173->6), ass. (0->32)
	t293 = cos(qJ(1));
	t289 = sin(qJ(4));
	t298 = qJD(1) * t289 + qJD(5);
	t314 = t298 * t293;
	t290 = sin(qJ(1));
	t292 = cos(qJ(4));
	t308 = qJD(4) * t293;
	t300 = t292 * t308;
	t313 = t298 * t290 - t300;
	t312 = qJD(1) * t290;
	t311 = qJD(1) * t293;
	t310 = qJD(4) * t289;
	t309 = qJD(4) * t292;
	t307 = qJD(5) * t289;
	t306 = qJD(5) * t292;
	t305 = t292 * t311;
	t291 = cos(qJ(5));
	t304 = t291 * t309;
	t303 = t290 * t309;
	t288 = sin(qJ(5));
	t302 = t288 * t306;
	t301 = t291 * t306;
	t299 = -qJD(1) - t307;
	t297 = t299 * t293;
	t296 = -t290 * t310 + t305;
	t295 = t289 * t308 + t292 * t312;
	t294 = -t291 * t310 - t302;
	t287 = t291 * t314 + (t299 * t288 + t304) * t290;
	t286 = t299 * t291 * t290 + (-t303 - t314) * t288;
	t285 = t288 * t297 - t313 * t291;
	t284 = t313 * t288 + t291 * t297;
	t1 = [-t287, 0, 0, -t295 * t291 - t293 * t302, t284, 0; t285, 0, 0, t294 * t290 + t291 * t305, t286, 0; 0, 0, 0, t288 * t307 - t304, t288 * t310 - t301, 0; t296, 0, 0, -t289 * t312 + t300, 0, 0; t295, 0, 0, t289 * t311 + t303, 0, 0; 0, 0, 0, -t310, 0, 0; t286, 0, 0, -t295 * t288 + t293 * t301, t285, 0; -t284, 0, 0, t296 * t288 + t290 * t301, t287, 0; 0, 0, 0, -t288 * t309 - t291 * t307, t294, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,6);
end