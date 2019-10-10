% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RRPPRP1
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d5,theta3,theta4]';
% 
% Output:
% JRD_rot [9x6]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 09:27
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S6RRPPRP1_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRP1_jacobiRD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPPRP1_jacobiRD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPPRP1_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPPRP1_jacobiRD_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:26:57
	% EndTime: 2019-10-10 09:26:57
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:26:57
	% EndTime: 2019-10-10 09:26:57
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
	% StartTime: 2019-10-10 09:26:57
	% EndTime: 2019-10-10 09:26:57
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
	% StartTime: 2019-10-10 09:26:57
	% EndTime: 2019-10-10 09:26:57
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (29->10), mult. (36->14), div. (0->0), fcn. (36->4), ass. (0->14)
	t50 = sin(qJ(1));
	t55 = qJD(1) * t50;
	t51 = cos(qJ(1));
	t54 = qJD(1) * t51;
	t53 = qJD(2) * t50;
	t52 = qJD(2) * t51;
	t49 = qJ(2) + pkin(9);
	t48 = cos(t49);
	t47 = sin(t49);
	t46 = t47 * t53 - t48 * t54;
	t45 = t47 * t54 + t48 * t53;
	t44 = t47 * t52 + t48 * t55;
	t43 = t47 * t55 - t48 * t52;
	t1 = [t46, t43, 0, 0, 0, 0; -t44, -t45, 0, 0, 0, 0; 0, -qJD(2) * t47, 0, 0, 0, 0; t45, t44, 0, 0, 0, 0; t43, t46, 0, 0, 0, 0; 0, -qJD(2) * t48, 0, 0, 0, 0; -t55, 0, 0, 0, 0, 0; t54, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:26:59
	% EndTime: 2019-10-10 09:26:59
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (44->18), mult. (77->36), div. (0->0), fcn. (77->6), ass. (0->21)
	t204 = sin(pkin(10));
	t206 = sin(qJ(1));
	t220 = t204 * t206;
	t207 = cos(qJ(1));
	t219 = t204 * t207;
	t205 = cos(pkin(10));
	t218 = t205 * t206;
	t217 = t205 * t207;
	t216 = qJD(1) * t206;
	t215 = qJD(1) * t207;
	t203 = qJ(2) + pkin(9);
	t201 = sin(t203);
	t214 = qJD(2) * t201;
	t213 = qJD(2) * t206;
	t212 = qJD(2) * t207;
	t211 = t201 * t213;
	t210 = t201 * t212;
	t202 = cos(t203);
	t209 = t201 * t215 + t202 * t213;
	t208 = t201 * t216 - t202 * t212;
	t1 = [t205 * t211 + (-t202 * t217 - t220) * qJD(1), t208 * t205, 0, 0, 0, 0; -t205 * t210 + (-t202 * t218 + t219) * qJD(1), -t209 * t205, 0, 0, 0, 0; 0, -t205 * t214, 0, 0, 0, 0; -t204 * t211 + (t202 * t219 - t218) * qJD(1), -t208 * t204, 0, 0, 0, 0; t204 * t210 + (t202 * t220 + t217) * qJD(1), t209 * t204, 0, 0, 0, 0; 0, t204 * t214, 0, 0, 0, 0; -t209, -t202 * t216 - t210, 0, 0, 0, 0; -t208, t202 * t215 - t211, 0, 0, 0, 0; 0, qJD(2) * t202, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:26:59
	% EndTime: 2019-10-10 09:26:59
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (161->27), mult. (173->50), div. (0->0), fcn. (173->6), ass. (0->35)
	t274 = cos(qJ(1));
	t272 = qJ(2) + pkin(9);
	t270 = cos(t272);
	t286 = qJD(5) * t270;
	t280 = -qJD(1) + t286;
	t296 = t274 * t280;
	t279 = qJD(1) * t270 - qJD(5);
	t268 = sin(t272);
	t273 = sin(qJ(1));
	t290 = qJD(2) * t273;
	t284 = t268 * t290;
	t295 = t279 * t274 - t284;
	t294 = qJD(1) * t273;
	t293 = qJD(1) * t274;
	t292 = qJD(2) * t268;
	t291 = qJD(2) * t270;
	t289 = qJD(2) * t274;
	t271 = pkin(10) + qJ(5);
	t267 = sin(t271);
	t288 = qJD(5) * t267;
	t287 = qJD(5) * t268;
	t269 = cos(t271);
	t285 = t269 * t287;
	t283 = t270 * t290;
	t282 = t268 * t289;
	t281 = t270 * t289;
	t278 = t280 * t273;
	t277 = t268 * t293 + t283;
	t276 = -t268 * t294 + t281;
	t275 = t279 * t273 + t282;
	t266 = t267 * t278 - t295 * t269;
	t265 = t295 * t267 + t269 * t278;
	t264 = t267 * t296 + t275 * t269;
	t263 = t275 * t267 - t269 * t296;
	t1 = [t266, -t269 * t281 + (t269 * t294 + t274 * t288) * t268, 0, 0, t263, 0; -t264, -t269 * t283 + (-t269 * t293 + t273 * t288) * t268, 0, 0, -t265, 0; 0, -t267 * t286 - t269 * t292, 0, 0, -t267 * t291 - t285, 0; t265, t276 * t267 + t274 * t285, 0, 0, t264, 0; t263, t277 * t267 + t273 * t285, 0, 0, t266, 0; 0, t267 * t292 - t269 * t286, 0, 0, t267 * t287 - t269 * t291, 0; -t277, -t270 * t294 - t282, 0, 0, 0, 0; t276, t270 * t293 - t284, 0, 0, 0, 0; 0, t291, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiRD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:27:00
	% EndTime: 2019-10-10 09:27:00
	% DurationCPUTime: 0.14s
	% Computational Cost: add. (161->27), mult. (173->50), div. (0->0), fcn. (173->6), ass. (0->35)
	t335 = sin(qJ(1));
	t334 = qJ(2) + pkin(9);
	t332 = cos(t334);
	t341 = qJD(1) * t332 - qJD(5);
	t330 = sin(t334);
	t336 = cos(qJ(1));
	t351 = qJD(2) * t336;
	t344 = t330 * t351;
	t358 = t341 * t335 + t344;
	t352 = qJD(2) * t335;
	t346 = t330 * t352;
	t357 = t341 * t336 - t346;
	t356 = qJD(1) * t335;
	t355 = qJD(1) * t336;
	t354 = qJD(2) * t330;
	t353 = qJD(2) * t332;
	t333 = pkin(10) + qJ(5);
	t329 = sin(t333);
	t350 = qJD(5) * t329;
	t349 = qJD(5) * t330;
	t348 = qJD(5) * t332;
	t331 = cos(t333);
	t347 = t331 * t349;
	t345 = t332 * t352;
	t343 = t332 * t351;
	t342 = qJD(1) - t348;
	t340 = t342 * t335;
	t339 = t342 * t336;
	t338 = -t330 * t355 - t345;
	t337 = t330 * t356 - t343;
	t328 = t329 * t340 + t357 * t331;
	t327 = -t357 * t329 + t331 * t340;
	t326 = t329 * t339 - t358 * t331;
	t325 = t358 * t329 + t331 * t339;
	t1 = [-t328, -t331 * t343 + (t331 * t356 + t336 * t350) * t330, 0, 0, t325, 0; t326, -t331 * t345 + (-t331 * t355 + t335 * t350) * t330, 0, 0, t327, 0; 0, -t329 * t348 - t331 * t354, 0, 0, -t329 * t353 - t347, 0; t338, -t332 * t356 - t344, 0, 0, 0, 0; -t337, t332 * t355 - t346, 0, 0, 0, 0; 0, t353, 0, 0, 0, 0; t327, t337 * t329 - t336 * t347, 0, 0, t326, 0; -t325, t338 * t329 - t335 * t347, 0, 0, t328, 0; 0, -t329 * t354 + t331 * t348, 0, 0, -t329 * t349 + t331 * t353, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,6);
end