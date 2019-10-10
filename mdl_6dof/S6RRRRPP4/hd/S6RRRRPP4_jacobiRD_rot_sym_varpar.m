% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RRRRPP4
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,theta5]';
% 
% Output:
% JRD_rot [9x6]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 12:25
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S6RRRRPP4_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP4_jacobiRD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP4_jacobiRD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRRPP4_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRPP4_jacobiRD_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:25:45
	% EndTime: 2019-10-10 12:25:45
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:25:45
	% EndTime: 2019-10-10 12:25:45
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
	% StartTime: 2019-10-10 12:25:46
	% EndTime: 2019-10-10 12:25:46
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
	% StartTime: 2019-10-10 12:25:47
	% EndTime: 2019-10-10 12:25:47
	% DurationCPUTime: 0.13s
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
	% StartTime: 2019-10-10 12:25:47
	% EndTime: 2019-10-10 12:25:47
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (184->30), mult. (233->48), div. (0->0), fcn. (233->6), ass. (0->35)
	t288 = qJD(3) + qJD(4);
	t290 = sin(qJ(2));
	t313 = t288 * t290;
	t292 = cos(qJ(2));
	t312 = t288 * t292;
	t291 = sin(qJ(1));
	t311 = qJD(1) * t291;
	t310 = qJD(1) * t292;
	t293 = cos(qJ(1));
	t309 = qJD(1) * t293;
	t308 = qJD(2) * t290;
	t307 = qJD(2) * t292;
	t306 = qJD(2) * t293;
	t289 = qJ(3) + qJ(4);
	t286 = sin(t289);
	t305 = t286 * t313;
	t287 = cos(t289);
	t304 = t287 * t313;
	t303 = t291 * t288 * t287;
	t302 = t293 * t288 * t286;
	t301 = t291 * t308;
	t300 = t290 * t306;
	t299 = -qJD(1) + t312;
	t298 = -t288 + t310;
	t297 = t286 * t299;
	t296 = t290 * t309 + t291 * t307;
	t295 = t290 * t311 - t292 * t306;
	t294 = t298 * t291 + t300;
	t282 = -t287 * t307 + t305;
	t281 = -t286 * t307 - t304;
	t280 = t291 * t297 + (-t298 * t293 + t301) * t287;
	t279 = -t286 * t301 - t302 - t287 * t311 + (t286 * t309 + t303) * t292;
	t278 = t294 * t287 + t293 * t297;
	t277 = -t299 * t293 * t287 + t294 * t286;
	t1 = [t280, t295 * t287 + t290 * t302, t277, t277, 0, 0; -t278, -t296 * t287 + t291 * t305, -t279, -t279, 0, 0; 0, -t286 * t312 - t287 * t308, t281, t281, 0, 0; t279, -t295 * t286 + t293 * t304, t278, t278, 0, 0; t277, t296 * t286 + t290 * t303, t280, t280, 0, 0; 0, t286 * t308 - t287 * t312, t282, t282, 0, 0; -t296, -t291 * t310 - t300, 0, 0, 0, 0; -t295, t292 * t309 - t301, 0, 0, 0, 0; 0, t307, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:25:47
	% EndTime: 2019-10-10 12:25:47
	% DurationCPUTime: 0.19s
	% Computational Cost: add. (268->30), mult. (233->48), div. (0->0), fcn. (233->6), ass. (0->35)
	t310 = qJD(3) + qJD(4);
	t311 = sin(qJ(2));
	t334 = t310 * t311;
	t313 = cos(qJ(2));
	t333 = t310 * t313;
	t312 = sin(qJ(1));
	t332 = qJD(1) * t312;
	t331 = qJD(1) * t313;
	t314 = cos(qJ(1));
	t330 = qJD(1) * t314;
	t329 = qJD(2) * t311;
	t328 = qJD(2) * t313;
	t327 = qJD(2) * t314;
	t309 = qJ(3) + qJ(4) + pkin(10);
	t307 = sin(t309);
	t326 = t307 * t334;
	t308 = cos(t309);
	t325 = t308 * t334;
	t324 = t312 * t310 * t308;
	t323 = t314 * t310 * t307;
	t322 = t312 * t329;
	t321 = t311 * t327;
	t320 = -qJD(1) + t333;
	t319 = -t310 + t331;
	t318 = t307 * t320;
	t317 = t311 * t330 + t312 * t328;
	t316 = t311 * t332 - t313 * t327;
	t315 = t319 * t312 + t321;
	t303 = -t308 * t328 + t326;
	t302 = -t307 * t328 - t325;
	t301 = t312 * t318 + (-t319 * t314 + t322) * t308;
	t300 = -t307 * t322 - t323 - t308 * t332 + (t307 * t330 + t324) * t313;
	t299 = t315 * t308 + t314 * t318;
	t298 = -t320 * t314 * t308 + t315 * t307;
	t1 = [t301, t316 * t308 + t311 * t323, t298, t298, 0, 0; -t299, -t317 * t308 + t312 * t326, -t300, -t300, 0, 0; 0, -t307 * t333 - t308 * t329, t302, t302, 0, 0; t300, -t316 * t307 + t314 * t325, t299, t299, 0, 0; t298, t317 * t307 + t311 * t324, t301, t301, 0, 0; 0, t307 * t329 - t308 * t333, t303, t303, 0, 0; -t317, -t312 * t331 - t321, 0, 0, 0, 0; -t316, t313 * t330 - t322, 0, 0, 0, 0; 0, t328, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiRD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:25:48
	% EndTime: 2019-10-10 12:25:48
	% DurationCPUTime: 0.13s
	% Computational Cost: add. (268->25), mult. (233->44), div. (0->0), fcn. (233->6), ass. (0->34)
	t386 = sin(qJ(1));
	t384 = qJD(3) + qJD(4);
	t387 = cos(qJ(2));
	t403 = qJD(1) * t387;
	t393 = -t384 + t403;
	t385 = sin(qJ(2));
	t388 = cos(qJ(1));
	t399 = qJD(2) * t388;
	t395 = t385 * t399;
	t407 = t393 * t386 + t395;
	t401 = qJD(2) * t385;
	t396 = t386 * t401;
	t406 = t393 * t388 - t396;
	t405 = t384 * t385;
	t404 = t384 * t387;
	t402 = qJD(1) * t388;
	t400 = qJD(2) * t387;
	t383 = qJ(3) + qJ(4) + pkin(10);
	t381 = sin(t383);
	t398 = t381 * t405;
	t382 = cos(t383);
	t397 = t382 * t405;
	t394 = qJD(1) - t404;
	t392 = t394 * t386;
	t391 = t394 * t388;
	t390 = -t385 * t402 - t386 * t400;
	t389 = qJD(1) * t386 * t385 - t387 * t399;
	t380 = t382 * t400 - t398;
	t379 = -t381 * t400 - t397;
	t378 = t381 * t392 + t406 * t382;
	t377 = -t406 * t381 + t382 * t392;
	t376 = t381 * t391 - t407 * t382;
	t375 = t407 * t381 + t382 * t391;
	t1 = [-t378, t389 * t382 + t388 * t398, t375, t375, 0, 0; t376, t390 * t382 + t386 * t398, t377, t377, 0, 0; 0, -t381 * t404 - t382 * t401, t379, t379, 0, 0; t390, -t386 * t403 - t395, 0, 0, 0, 0; -t389, t387 * t402 - t396, 0, 0, 0, 0; 0, t400, 0, 0, 0, 0; t377, t389 * t381 - t388 * t397, t376, t376, 0, 0; -t375, t390 * t381 - t386 * t397, t378, t378, 0, 0; 0, -t381 * t401 + t382 * t404, t380, t380, 0, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,6);
end