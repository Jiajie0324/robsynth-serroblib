% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RRRPRR6
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,d6,theta4]';
% 
% Output:
% JRD_rot [9x6]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 12:02
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S6RRRPRR6_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR6_jacobiRD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRR6_jacobiRD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRPRR6_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPRR6_jacobiRD_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:02:21
	% EndTime: 2019-10-10 12:02:21
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:02:21
	% EndTime: 2019-10-10 12:02:21
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
	% StartTime: 2019-10-10 12:02:21
	% EndTime: 2019-10-10 12:02:21
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (11->9), mult. (36->13), div. (0->0), fcn. (36->4), ass. (0->14)
	t34 = sin(qJ(1));
	t41 = qJD(1) * t34;
	t36 = cos(qJ(1));
	t40 = qJD(1) * t36;
	t33 = sin(qJ(2));
	t39 = qJD(2) * t33;
	t35 = cos(qJ(2));
	t38 = qJD(2) * t35;
	t37 = qJD(2) * t36;
	t32 = t34 * t39 - t35 * t40;
	t31 = t33 * t40 + t34 * t38;
	t30 = t33 * t37 + t35 * t41;
	t29 = t33 * t41 - t35 * t37;
	t1 = [t32, t29, 0, 0, 0, 0; -t30, -t31, 0, 0, 0, 0; 0, -t39, 0, 0, 0, 0; t31, t30, 0, 0, 0, 0; t29, t32, 0, 0, 0, 0; 0, -t38, 0, 0, 0, 0; -t41, 0, 0, 0, 0, 0; t40, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiRD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:02:22
	% EndTime: 2019-10-10 12:02:23
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (48->26), mult. (173->50), div. (0->0), fcn. (173->6), ass. (0->33)
	t232 = cos(qJ(3));
	t234 = cos(qJ(1));
	t256 = t232 * t234;
	t231 = sin(qJ(1));
	t255 = qJD(1) * t231;
	t233 = cos(qJ(2));
	t254 = qJD(1) * t233;
	t253 = qJD(1) * t234;
	t230 = sin(qJ(2));
	t252 = qJD(2) * t230;
	t251 = qJD(2) * t233;
	t250 = qJD(2) * t234;
	t229 = sin(qJ(3));
	t249 = qJD(3) * t229;
	t248 = qJD(3) * t230;
	t247 = qJD(3) * t233;
	t246 = t232 * t252;
	t245 = t232 * t248;
	t244 = t231 * t252;
	t243 = t231 * t251;
	t242 = t230 * t250;
	t241 = t233 * t250;
	t240 = -qJD(1) + t247;
	t239 = -qJD(3) + t254;
	t238 = t240 * t229;
	t237 = t230 * t253 + t243;
	t236 = -t230 * t255 + t241;
	t235 = t239 * t231 + t242;
	t228 = -t239 * t256 + (t238 + t246) * t231;
	t227 = t240 * t232 * t231 + (t239 * t234 - t244) * t229;
	t226 = t235 * t232 + t234 * t238;
	t225 = t235 * t229 - t240 * t256;
	t1 = [t228, -t232 * t241 + (t232 * t255 + t234 * t249) * t230, t225, 0, 0, 0; -t226, -t232 * t243 + (t231 * t249 - t232 * t253) * t230, -t227, 0, 0, 0; 0, -t229 * t247 - t246, -t229 * t251 - t245, 0, 0, 0; t227, t236 * t229 + t234 * t245, t226, 0, 0, 0; t225, t237 * t229 + t231 * t245, t228, 0, 0, 0; 0, t229 * t252 - t232 * t247, t229 * t248 - t232 * t251, 0, 0, 0; -t237, -t231 * t254 - t242, 0, 0, 0, 0; t236, t233 * t253 - t244, 0, 0, 0, 0; 0, t251, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:02:22
	% EndTime: 2019-10-10 12:02:23
	% DurationCPUTime: 0.13s
	% Computational Cost: add. (108->25), mult. (173->44), div. (0->0), fcn. (173->6), ass. (0->31)
	t260 = cos(qJ(1));
	t259 = cos(qJ(2));
	t271 = qJD(3) * t259;
	t266 = -qJD(1) + t271;
	t279 = t260 * t266;
	t277 = qJD(1) * t259;
	t265 = -qJD(3) + t277;
	t258 = sin(qJ(1));
	t257 = sin(qJ(2));
	t275 = qJD(2) * t257;
	t268 = t258 * t275;
	t278 = t265 * t260 - t268;
	t276 = qJD(1) * t260;
	t274 = qJD(2) * t259;
	t273 = qJD(2) * t260;
	t272 = qJD(3) * t257;
	t256 = qJ(3) + pkin(11);
	t254 = sin(t256);
	t270 = t254 * t272;
	t255 = cos(t256);
	t269 = t255 * t272;
	t267 = t257 * t273;
	t264 = t266 * t258;
	t263 = t257 * t276 + t258 * t274;
	t262 = qJD(1) * t258 * t257 - t259 * t273;
	t261 = t265 * t258 + t267;
	t253 = t254 * t264 - t278 * t255;
	t252 = t278 * t254 + t255 * t264;
	t251 = t254 * t279 + t261 * t255;
	t250 = t261 * t254 - t255 * t279;
	t1 = [t253, t262 * t255 + t260 * t270, t250, 0, 0, 0; -t251, -t263 * t255 + t258 * t270, -t252, 0, 0, 0; 0, -t254 * t271 - t255 * t275, -t254 * t274 - t269, 0, 0, 0; t252, -t262 * t254 + t260 * t269, t251, 0, 0, 0; t250, t263 * t254 + t258 * t269, t253, 0, 0, 0; 0, t254 * t275 - t255 * t271, -t255 * t274 + t270, 0, 0, 0; -t263, -t258 * t277 - t267, 0, 0, 0, 0; -t262, t259 * t276 - t268, 0, 0, 0, 0; 0, t274, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:02:23
	% EndTime: 2019-10-10 12:02:23
	% DurationCPUTime: 0.19s
	% Computational Cost: add. (268->30), mult. (233->48), div. (0->0), fcn. (233->6), ass. (0->35)
	t303 = qJD(3) + qJD(5);
	t304 = sin(qJ(2));
	t327 = t303 * t304;
	t306 = cos(qJ(2));
	t326 = t303 * t306;
	t305 = sin(qJ(1));
	t325 = qJD(1) * t305;
	t324 = qJD(1) * t306;
	t307 = cos(qJ(1));
	t323 = qJD(1) * t307;
	t322 = qJD(2) * t304;
	t321 = qJD(2) * t306;
	t320 = qJD(2) * t307;
	t302 = qJ(3) + pkin(11) + qJ(5);
	t300 = sin(t302);
	t319 = t300 * t327;
	t301 = cos(t302);
	t318 = t301 * t327;
	t317 = t305 * t303 * t301;
	t316 = t307 * t303 * t300;
	t315 = t305 * t322;
	t314 = t304 * t320;
	t313 = -qJD(1) + t326;
	t312 = -t303 + t324;
	t311 = t300 * t313;
	t310 = t304 * t323 + t305 * t321;
	t309 = t304 * t325 - t306 * t320;
	t308 = t312 * t305 + t314;
	t296 = -t301 * t321 + t319;
	t295 = -t300 * t321 - t318;
	t294 = t305 * t311 + (-t312 * t307 + t315) * t301;
	t293 = -t300 * t315 - t316 - t301 * t325 + (t300 * t323 + t317) * t306;
	t292 = t308 * t301 + t307 * t311;
	t291 = -t313 * t307 * t301 + t308 * t300;
	t1 = [t294, t309 * t301 + t304 * t316, t291, 0, t291, 0; -t292, -t310 * t301 + t305 * t319, -t293, 0, -t293, 0; 0, -t300 * t326 - t301 * t322, t295, 0, t295, 0; t293, -t309 * t300 + t307 * t318, t292, 0, t292, 0; t291, t310 * t300 + t304 * t317, t294, 0, t294, 0; 0, t300 * t322 - t301 * t326, t296, 0, t296, 0; -t310, -t305 * t324 - t314, 0, 0, 0, 0; -t309, t306 * t323 - t315, 0, 0, 0, 0; 0, t321, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiRD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:02:23
	% EndTime: 2019-10-10 12:02:23
	% DurationCPUTime: 0.13s
	% Computational Cost: add. (496->31), mult. (293->48), div. (0->0), fcn. (293->6), ass. (0->35)
	t323 = qJD(3) + qJD(5) + qJD(6);
	t324 = sin(qJ(2));
	t347 = t323 * t324;
	t326 = cos(qJ(2));
	t346 = t323 * t326;
	t325 = sin(qJ(1));
	t345 = qJD(1) * t325;
	t344 = qJD(1) * t326;
	t327 = cos(qJ(1));
	t343 = qJD(1) * t327;
	t342 = qJD(2) * t324;
	t341 = qJD(2) * t326;
	t340 = qJD(2) * t327;
	t322 = qJ(3) + pkin(11) + qJ(5) + qJ(6);
	t320 = sin(t322);
	t339 = t320 * t347;
	t321 = cos(t322);
	t338 = t321 * t347;
	t337 = t325 * t323 * t321;
	t336 = t327 * t323 * t320;
	t335 = t325 * t342;
	t334 = t324 * t340;
	t333 = -qJD(1) + t346;
	t332 = -t323 + t344;
	t331 = t320 * t333;
	t330 = t324 * t343 + t325 * t341;
	t329 = t324 * t345 - t326 * t340;
	t328 = t332 * t325 + t334;
	t316 = -t321 * t341 + t339;
	t315 = -t320 * t341 - t338;
	t314 = t325 * t331 + (-t332 * t327 + t335) * t321;
	t313 = -t336 - t320 * t335 - t321 * t345 + (t320 * t343 + t337) * t326;
	t312 = t328 * t321 + t327 * t331;
	t311 = -t333 * t327 * t321 + t328 * t320;
	t1 = [t314, t329 * t321 + t324 * t336, t311, 0, t311, t311; -t312, -t330 * t321 + t325 * t339, -t313, 0, -t313, -t313; 0, -t320 * t346 - t321 * t342, t315, 0, t315, t315; t313, -t329 * t320 + t327 * t338, t312, 0, t312, t312; t311, t330 * t320 + t324 * t337, t314, 0, t314, t314; 0, t320 * t342 - t321 * t346, t316, 0, t316, t316; -t330, -t325 * t344 - t334, 0, 0, 0, 0; -t329, t326 * t343 - t335, 0, 0, 0, 0; 0, t341, 0, 0, 0, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,6);
end