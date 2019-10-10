% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RPRRPR6
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
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d6,theta2,theta5]';
% 
% Output:
% JRD_rot [9x6]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 01:32
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S6RPRRPR6_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPR6_jacobiRD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRPR6_jacobiRD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RPRRPR6_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRRPR6_jacobiRD_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:32:12
	% EndTime: 2019-10-10 01:32:12
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:32:12
	% EndTime: 2019-10-10 01:32:12
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
	% StartTime: 2019-10-10 01:32:12
	% EndTime: 2019-10-10 01:32:12
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (3->3), mult. (10->6), div. (0->0), fcn. (10->4), ass. (0->5)
	t22 = qJD(1) * sin(qJ(1));
	t21 = qJD(1) * cos(qJ(1));
	t18 = cos(pkin(10));
	t17 = sin(pkin(10));
	t1 = [-t18 * t21, 0, 0, 0, 0, 0; -t18 * t22, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; t17 * t21, 0, 0, 0, 0, 0; t17 * t22, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; -t22, 0, 0, 0, 0, 0; t21, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiRD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:32:12
	% EndTime: 2019-10-10 01:32:12
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (29->10), mult. (36->14), div. (0->0), fcn. (36->4), ass. (0->14)
	t43 = sin(qJ(1));
	t48 = qJD(1) * t43;
	t44 = cos(qJ(1));
	t47 = qJD(1) * t44;
	t46 = qJD(3) * t43;
	t45 = qJD(3) * t44;
	t42 = pkin(10) + qJ(3);
	t41 = cos(t42);
	t40 = sin(t42);
	t39 = t40 * t46 - t41 * t47;
	t38 = t40 * t47 + t41 * t46;
	t37 = t40 * t45 + t41 * t48;
	t36 = t40 * t48 - t41 * t45;
	t1 = [t39, 0, t36, 0, 0, 0; -t37, 0, -t38, 0, 0, 0; 0, 0, -qJD(3) * t40, 0, 0, 0; t38, 0, t37, 0, 0, 0; t36, 0, t39, 0, 0, 0; 0, 0, -qJD(3) * t41, 0, 0, 0; -t48, 0, 0, 0, 0, 0; t47, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:32:13
	% EndTime: 2019-10-10 01:32:14
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (101->28), mult. (173->57), div. (0->0), fcn. (173->6), ass. (0->31)
	t245 = cos(qJ(4));
	t246 = cos(qJ(1));
	t265 = t245 * t246;
	t244 = sin(qJ(1));
	t264 = qJD(1) * t244;
	t263 = qJD(1) * t246;
	t243 = sin(qJ(4));
	t262 = qJD(3) * t243;
	t261 = qJD(3) * t244;
	t260 = qJD(3) * t245;
	t259 = qJD(3) * t246;
	t258 = qJD(4) * t243;
	t257 = qJD(4) * t245;
	t256 = qJD(4) * t246;
	t242 = pkin(10) + qJ(3);
	t240 = sin(t242);
	t255 = t240 * t260;
	t254 = t240 * t261;
	t241 = cos(t242);
	t253 = t241 * t261;
	t252 = t240 * t259;
	t251 = t241 * t259;
	t250 = qJD(4) * t241 - qJD(1);
	t249 = qJD(1) * t241 - qJD(4);
	t248 = t250 * t243;
	t247 = t249 * t244 + t252;
	t239 = -t249 * t265 + (t248 + t255) * t244;
	t238 = t250 * t245 * t244 + (t249 * t246 - t254) * t243;
	t237 = t247 * t245 + t246 * t248;
	t236 = t247 * t243 - t250 * t265;
	t1 = [t239, 0, -t245 * t251 + (t243 * t256 + t245 * t264) * t240, t236, 0, 0; -t237, 0, -t245 * t253 + (t244 * t258 - t245 * t263) * t240, -t238, 0, 0; 0, 0, -t241 * t258 - t255, -t240 * t257 - t241 * t262, 0, 0; t238, 0, t243 * t251 + (-t243 * t264 + t245 * t256) * t240, t237, 0, 0; t236, 0, t243 * t253 + (t243 * t263 + t244 * t257) * t240, t239, 0, 0; 0, 0, t240 * t262 - t241 * t257, t240 * t258 - t241 * t260, 0, 0; -t240 * t263 - t253, 0, -t241 * t264 - t252, 0, 0, 0; -t240 * t264 + t251, 0, t241 * t263 - t254, 0, 0, 0; 0, 0, qJD(3) * t241, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:32:13
	% EndTime: 2019-10-10 01:32:14
	% DurationCPUTime: 0.15s
	% Computational Cost: add. (161->28), mult. (173->56), div. (0->0), fcn. (173->6), ass. (0->34)
	t276 = cos(qJ(1));
	t273 = pkin(10) + qJ(3);
	t271 = cos(t273);
	t288 = qJD(4) * t271;
	t280 = -qJD(1) + t288;
	t297 = t276 * t280;
	t279 = qJD(1) * t271 - qJD(4);
	t269 = sin(t273);
	t275 = sin(qJ(1));
	t290 = qJD(3) * t275;
	t284 = t269 * t290;
	t296 = t279 * t276 - t284;
	t274 = qJ(4) + pkin(11);
	t270 = sin(t274);
	t295 = t269 * t270;
	t294 = qJD(1) * t275;
	t293 = qJD(1) * t276;
	t292 = qJD(3) * t271;
	t272 = cos(t274);
	t291 = qJD(3) * t272;
	t289 = qJD(3) * t276;
	t287 = qJD(4) * t272;
	t286 = qJD(4) * t275;
	t285 = qJD(4) * t276;
	t283 = t271 * t290;
	t282 = t269 * t289;
	t281 = t271 * t289;
	t278 = t280 * t275;
	t277 = t279 * t275 + t282;
	t268 = t270 * t278 - t296 * t272;
	t267 = t296 * t270 + t272 * t278;
	t266 = t270 * t297 + t277 * t272;
	t265 = t277 * t270 - t272 * t297;
	t1 = [t268, 0, -t272 * t281 + (t270 * t285 + t272 * t294) * t269, t265, 0, 0; -t266, 0, -t272 * t283 + (t270 * t286 - t272 * t293) * t269, -t267, 0, 0; 0, 0, -t269 * t291 - t270 * t288, -t269 * t287 - t270 * t292, 0, 0; t267, 0, t270 * t281 + (-t270 * t294 + t272 * t285) * t269, t266, 0, 0; t265, 0, t270 * t283 + (t270 * t293 + t272 * t286) * t269, t268, 0, 0; 0, 0, qJD(3) * t295 - t271 * t287, qJD(4) * t295 - t271 * t291, 0, 0; -t269 * t293 - t283, 0, -t271 * t294 - t282, 0, 0, 0; -t269 * t294 + t281, 0, t271 * t293 - t284, 0, 0, 0; 0, 0, t292, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiRD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:32:14
	% EndTime: 2019-10-10 01:32:14
	% DurationCPUTime: 0.14s
	% Computational Cost: add. (337->31), mult. (233->49), div. (0->0), fcn. (233->6), ass. (0->36)
	t317 = pkin(10) + qJ(3);
	t314 = sin(t317);
	t318 = qJD(4) + qJD(6);
	t340 = t314 * t318;
	t315 = cos(t317);
	t339 = t315 * t318;
	t319 = sin(qJ(1));
	t338 = qJD(1) * t319;
	t320 = cos(qJ(1));
	t337 = qJD(1) * t320;
	t336 = qJD(3) * t314;
	t335 = qJD(3) * t315;
	t334 = qJD(3) * t319;
	t333 = qJD(3) * t320;
	t316 = qJ(4) + pkin(11) + qJ(6);
	t312 = sin(t316);
	t332 = t312 * t340;
	t313 = cos(t316);
	t331 = t313 * t340;
	t330 = t319 * t318 * t313;
	t329 = t320 * t318 * t312;
	t328 = t314 * t334;
	t327 = t314 * t333;
	t326 = -qJD(1) + t339;
	t325 = qJD(1) * t315 - t318;
	t324 = t312 * t326;
	t323 = t314 * t337 + t315 * t334;
	t322 = t314 * t338 - t315 * t333;
	t321 = t325 * t319 + t327;
	t308 = -t313 * t335 + t332;
	t307 = -t312 * t335 - t331;
	t306 = t319 * t324 + (-t325 * t320 + t328) * t313;
	t305 = -t312 * t328 - t329 - t313 * t338 + (t312 * t337 + t330) * t315;
	t304 = t321 * t313 + t320 * t324;
	t303 = -t326 * t320 * t313 + t321 * t312;
	t1 = [t306, 0, t322 * t313 + t314 * t329, t303, 0, t303; -t304, 0, -t323 * t313 + t319 * t332, -t305, 0, -t305; 0, 0, -t312 * t339 - t313 * t336, t307, 0, t307; t305, 0, -t322 * t312 + t320 * t331, t304, 0, t304; t303, 0, t323 * t312 + t314 * t330, t306, 0, t306; 0, 0, t312 * t336 - t313 * t339, t308, 0, t308; -t323, 0, -t315 * t338 - t327, 0, 0, 0; -t322, 0, t315 * t337 - t328, 0, 0, 0; 0, 0, t335, 0, 0, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,6);
end