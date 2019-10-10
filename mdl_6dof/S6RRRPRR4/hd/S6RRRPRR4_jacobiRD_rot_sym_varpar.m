% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RRRPRR4
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
% Datum: 2019-10-10 11:58
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S6RRRPRR4_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR4_jacobiRD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRR4_jacobiRD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRPRR4_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPRR4_jacobiRD_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:58:49
	% EndTime: 2019-10-10 11:58:50
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:58:49
	% EndTime: 2019-10-10 11:58:50
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
	% StartTime: 2019-10-10 11:58:50
	% EndTime: 2019-10-10 11:58:50
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
	% StartTime: 2019-10-10 11:58:50
	% EndTime: 2019-10-10 11:58:50
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (61->14), mult. (54->14), div. (0->0), fcn. (54->4), ass. (0->17)
	t71 = qJ(2) + qJ(3);
	t68 = sin(t71);
	t70 = qJD(2) + qJD(3);
	t79 = t70 * t68;
	t69 = cos(t71);
	t78 = t70 * t69;
	t72 = sin(qJ(1));
	t77 = t70 * t72;
	t73 = cos(qJ(1));
	t76 = t70 * t73;
	t75 = qJD(1) * t72;
	t74 = qJD(1) * t73;
	t67 = t68 * t77 - t69 * t74;
	t66 = t68 * t74 + t69 * t77;
	t65 = t68 * t76 + t69 * t75;
	t64 = t68 * t75 - t69 * t76;
	t1 = [t67, t64, t64, 0, 0, 0; -t65, -t66, -t66, 0, 0, 0; 0, -t79, -t79, 0, 0, 0; t66, t65, t65, 0, 0, 0; t64, t67, t67, 0, 0, 0; 0, -t78, -t78, 0, 0, 0; -t75, 0, 0, 0, 0, 0; t74, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:58:51
	% EndTime: 2019-10-10 11:58:51
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (90->22), mult. (114->36), div. (0->0), fcn. (114->6), ass. (0->31)
	t282 = qJ(2) + qJ(3);
	t279 = sin(t282);
	t281 = qJD(2) + qJD(3);
	t300 = t279 * t281;
	t285 = sin(qJ(1));
	t299 = t281 * t285;
	t286 = cos(qJ(1));
	t298 = t281 * t286;
	t283 = sin(pkin(11));
	t297 = t283 * t285;
	t296 = t283 * t286;
	t284 = cos(pkin(11));
	t295 = t284 * t285;
	t294 = t284 * t286;
	t293 = qJD(1) * t285;
	t292 = qJD(1) * t286;
	t291 = t284 * t300;
	t290 = t279 * t299;
	t289 = t279 * t298;
	t280 = cos(t282);
	t288 = t279 * t292 + t280 * t299;
	t287 = t279 * t293 - t280 * t298;
	t278 = t281 * t280;
	t277 = t283 * t300;
	t276 = t280 * t292 - t290;
	t275 = -t280 * t293 - t289;
	t274 = t288 * t284;
	t273 = t288 * t283;
	t272 = t287 * t284;
	t271 = t287 * t283;
	t1 = [t284 * t290 + (-t280 * t294 - t297) * qJD(1), t272, t272, 0, 0, 0; -t284 * t289 + (-t280 * t295 + t296) * qJD(1), -t274, -t274, 0, 0, 0; 0, -t291, -t291, 0, 0, 0; -t283 * t290 + (t280 * t296 - t295) * qJD(1), -t271, -t271, 0, 0, 0; t283 * t289 + (t280 * t297 + t294) * qJD(1), t273, t273, 0, 0, 0; 0, t277, t277, 0, 0, 0; -t288, t275, t275, 0, 0, 0; -t287, t276, t276, 0, 0, 0; 0, t278, t278, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:58:51
	% EndTime: 2019-10-10 11:58:51
	% DurationCPUTime: 0.14s
	% Computational Cost: add. (240->27), mult. (226->45), div. (0->0), fcn. (226->6), ass. (0->42)
	t340 = cos(qJ(1));
	t338 = qJ(2) + qJ(3);
	t335 = cos(t338);
	t351 = qJD(5) * t335;
	t346 = -qJD(1) + t351;
	t359 = t340 * t346;
	t345 = qJD(1) * t335 - qJD(5);
	t334 = sin(t338);
	t337 = qJD(2) + qJD(3);
	t339 = sin(qJ(1));
	t356 = t337 * t339;
	t350 = t334 * t356;
	t358 = t345 * t340 - t350;
	t357 = t334 * t337;
	t331 = t337 * t335;
	t355 = t337 * t340;
	t354 = qJD(1) * t339;
	t353 = qJD(1) * t340;
	t352 = qJD(5) * t334;
	t349 = t334 * t355;
	t336 = pkin(11) + qJ(5);
	t332 = sin(t336);
	t348 = t332 * t352;
	t333 = cos(t336);
	t347 = t333 * t352;
	t344 = t346 * t339;
	t343 = t334 * t353 + t335 * t356;
	t342 = t334 * t354 - t335 * t355;
	t341 = t345 * t339 + t349;
	t330 = t335 * t353 - t350;
	t329 = -t335 * t354 - t349;
	t328 = -t332 * t351 - t333 * t357;
	t327 = t332 * t357 - t333 * t351;
	t326 = -t343 * t333 + t339 * t348;
	t325 = t343 * t332 + t339 * t347;
	t324 = t342 * t333 + t340 * t348;
	t323 = -t342 * t332 + t340 * t347;
	t322 = t332 * t344 - t358 * t333;
	t321 = t358 * t332 + t333 * t344;
	t320 = t332 * t359 + t341 * t333;
	t319 = t341 * t332 - t333 * t359;
	t1 = [t322, t324, t324, 0, t319, 0; -t320, t326, t326, 0, -t321, 0; 0, t328, t328, 0, -t332 * t331 - t347, 0; t321, t323, t323, 0, t320, 0; t319, t325, t325, 0, t322, 0; 0, t327, t327, 0, -t333 * t331 + t348, 0; -t343, t329, t329, 0, 0, 0; -t342, t330, t330, 0, 0, 0; 0, t331, t331, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiRD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:58:52
	% EndTime: 2019-10-10 11:58:52
	% DurationCPUTime: 0.23s
	% Computational Cost: add. (444->32), mult. (286->49), div. (0->0), fcn. (286->6), ass. (0->45)
	t393 = qJ(2) + qJ(3);
	t389 = sin(t393);
	t391 = qJD(5) + qJD(6);
	t414 = t389 * t391;
	t392 = qJD(2) + qJD(3);
	t413 = t389 * t392;
	t390 = cos(t393);
	t412 = t390 * t391;
	t385 = t392 * t390;
	t394 = sin(qJ(1));
	t411 = t392 * t394;
	t395 = cos(qJ(1));
	t410 = t392 * t395;
	t409 = qJD(1) * t394;
	t408 = qJD(1) * t395;
	t388 = pkin(11) + qJ(5) + qJ(6);
	t386 = sin(t388);
	t407 = t386 * t414;
	t387 = cos(t388);
	t406 = t387 * t414;
	t405 = t394 * t391 * t387;
	t404 = t389 * t411;
	t403 = t395 * t391 * t386;
	t402 = t389 * t410;
	t401 = -qJD(1) + t412;
	t400 = qJD(1) * t390 - t391;
	t399 = t386 * t401;
	t398 = t389 * t408 + t390 * t411;
	t397 = t389 * t409 - t390 * t410;
	t396 = t400 * t394 + t402;
	t381 = t390 * t408 - t404;
	t380 = -t390 * t409 - t402;
	t379 = -t387 * t385 + t407;
	t378 = -t386 * t385 - t406;
	t377 = -t386 * t412 - t387 * t413;
	t376 = t386 * t413 - t387 * t412;
	t375 = -t398 * t387 + t394 * t407;
	t374 = t398 * t386 + t389 * t405;
	t373 = t397 * t387 + t389 * t403;
	t372 = -t397 * t386 + t395 * t406;
	t371 = t394 * t399 + (-t400 * t395 + t404) * t387;
	t370 = -t386 * t404 - t403 - t387 * t409 + (t386 * t408 + t405) * t390;
	t369 = t396 * t387 + t395 * t399;
	t368 = -t401 * t395 * t387 + t396 * t386;
	t1 = [t371, t373, t373, 0, t368, t368; -t369, t375, t375, 0, -t370, -t370; 0, t377, t377, 0, t378, t378; t370, t372, t372, 0, t369, t369; t368, t374, t374, 0, t371, t371; 0, t376, t376, 0, t379, t379; -t398, t380, t380, 0, 0, 0; -t397, t381, t381, 0, 0, 0; 0, t385, t385, 0, 0, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,6);
end