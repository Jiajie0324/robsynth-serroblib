% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6PRRPRR7
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,d6,theta1]';
% 
% Output:
% JRD_rot [9x6]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 22:37
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S6PRRPRR7_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRR7_jacobiRD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPRR7_jacobiRD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6PRRPRR7_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRPRR7_jacobiRD_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:37:18
	% EndTime: 2019-10-09 22:37:18
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:37:18
	% EndTime: 2019-10-09 22:37:18
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiRD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:37:18
	% EndTime: 2019-10-09 22:37:18
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (6->6), mult. (24->17), div. (0->0), fcn. (24->6), ass. (0->9)
	t61 = cos(pkin(6));
	t62 = sin(qJ(2));
	t66 = t61 * t62;
	t63 = cos(qJ(2));
	t65 = t61 * t63;
	t64 = qJD(2) * sin(pkin(6));
	t60 = cos(pkin(11));
	t58 = sin(pkin(11));
	t1 = [0, (t58 * t66 - t60 * t63) * qJD(2), 0, 0, 0, 0; 0, (-t58 * t63 - t60 * t66) * qJD(2), 0, 0, 0, 0; 0, -t62 * t64, 0, 0, 0, 0; 0, (t58 * t65 + t60 * t62) * qJD(2), 0, 0, 0, 0; 0, (t58 * t62 - t60 * t65) * qJD(2), 0, 0, 0, 0; 0, -t63 * t64, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiRD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:37:19
	% EndTime: 2019-10-09 22:37:19
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (36->22), mult. (140->59), div. (0->0), fcn. (148->8), ass. (0->26)
	t211 = sin(pkin(6));
	t214 = sin(qJ(3));
	t227 = t211 * t214;
	t216 = cos(qJ(3));
	t226 = t211 * t216;
	t213 = cos(pkin(6));
	t215 = sin(qJ(2));
	t225 = t213 * t215;
	t217 = cos(qJ(2));
	t224 = t213 * t217;
	t223 = qJD(2) * t215;
	t222 = qJD(3) * t214;
	t221 = qJD(3) * t216;
	t220 = qJD(3) * t217;
	t219 = t211 * qJD(2) * t217;
	t210 = sin(pkin(11));
	t212 = cos(pkin(11));
	t206 = -t210 * t215 + t212 * t224;
	t207 = t210 * t217 + t212 * t225;
	t208 = -t210 * t224 - t212 * t215;
	t218 = t210 * t225 - t212 * t217;
	t205 = t218 * qJD(2);
	t204 = t208 * qJD(2);
	t203 = t207 * qJD(2);
	t202 = t206 * qJD(2);
	t1 = [0, t205 * t216 - t208 * t222, -t204 * t214 + (-t210 * t227 + t216 * t218) * qJD(3), 0, 0, 0; 0, -t203 * t216 - t206 * t222, -t202 * t214 + (-t207 * t216 + t212 * t227) * qJD(3), 0, 0, 0; 0, (-t214 * t220 - t216 * t223) * t211, -t214 * t219 + (-t213 * t214 - t215 * t226) * qJD(3), 0, 0, 0; 0, -t205 * t214 - t208 * t221, -t204 * t216 + (-t210 * t226 - t214 * t218) * qJD(3), 0, 0, 0; 0, t203 * t214 - t206 * t221, -t202 * t216 + (t207 * t214 + t212 * t226) * qJD(3), 0, 0, 0; 0, (t214 * t223 - t216 * t220) * t211, -t216 * t219 + (-t213 * t216 + t215 * t227) * qJD(3), 0, 0, 0; 0, t204, 0, 0, 0, 0; 0, t202, 0, 0, 0, 0; 0, t219, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:37:20
	% EndTime: 2019-10-09 22:37:20
	% DurationCPUTime: 0.19s
	% Computational Cost: add. (36->22), mult. (140->59), div. (0->0), fcn. (148->8), ass. (0->26)
	t257 = sin(pkin(6));
	t260 = sin(qJ(3));
	t273 = t257 * t260;
	t262 = cos(qJ(3));
	t272 = t257 * t262;
	t259 = cos(pkin(6));
	t261 = sin(qJ(2));
	t271 = t259 * t261;
	t263 = cos(qJ(2));
	t270 = t259 * t263;
	t269 = qJD(2) * t261;
	t268 = qJD(3) * t260;
	t267 = qJD(3) * t262;
	t266 = qJD(3) * t263;
	t265 = t257 * qJD(2) * t263;
	t256 = sin(pkin(11));
	t258 = cos(pkin(11));
	t252 = -t256 * t261 + t258 * t270;
	t253 = t256 * t263 + t258 * t271;
	t254 = -t256 * t270 - t258 * t261;
	t264 = t256 * t271 - t258 * t263;
	t251 = t264 * qJD(2);
	t250 = t254 * qJD(2);
	t249 = t253 * qJD(2);
	t248 = t252 * qJD(2);
	t1 = [0, t250, 0, 0, 0, 0; 0, t248, 0, 0, 0, 0; 0, t265, 0, 0, 0, 0; 0, -t251 * t262 + t254 * t268, t250 * t260 + (t256 * t273 - t262 * t264) * qJD(3), 0, 0, 0; 0, t249 * t262 + t252 * t268, t248 * t260 + (t253 * t262 - t258 * t273) * qJD(3), 0, 0, 0; 0, (t260 * t266 + t262 * t269) * t257, t260 * t265 + (t259 * t260 + t261 * t272) * qJD(3), 0, 0, 0; 0, t251 * t260 + t254 * t267, t250 * t262 + (t256 * t272 + t260 * t264) * qJD(3), 0, 0, 0; 0, -t249 * t260 + t252 * t267, t248 * t262 + (-t253 * t260 - t258 * t272) * qJD(3), 0, 0, 0; 0, (-t260 * t269 + t262 * t266) * t257, t262 * t265 + (t259 * t262 - t261 * t273) * qJD(3), 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:37:21
	% EndTime: 2019-10-09 22:37:21
	% DurationCPUTime: 0.37s
	% Computational Cost: add. (153->62), mult. (516->127), div. (0->0), fcn. (564->10), ass. (0->54)
	t362 = sin(pkin(6));
	t366 = sin(qJ(3));
	t395 = t362 * t366;
	t369 = cos(qJ(3));
	t394 = t362 * t369;
	t364 = cos(pkin(6));
	t367 = sin(qJ(2));
	t393 = t364 * t367;
	t370 = cos(qJ(2));
	t392 = t364 * t370;
	t365 = sin(qJ(5));
	t391 = t365 * t370;
	t368 = cos(qJ(5));
	t390 = t368 * t370;
	t389 = qJD(2) * t367;
	t388 = qJD(2) * t370;
	t387 = qJD(3) * t366;
	t386 = qJD(3) * t369;
	t385 = qJD(3) * t370;
	t384 = qJD(5) * t365;
	t383 = qJD(5) * t366;
	t382 = qJD(5) * t368;
	t361 = sin(pkin(11));
	t381 = t361 * t393;
	t380 = t362 * t389;
	t379 = t362 * t388;
	t378 = qJD(2) + t383;
	t363 = cos(pkin(11));
	t374 = -t361 * t367 + t363 * t392;
	t349 = t374 * qJD(2);
	t377 = -t374 * t383 - t349;
	t355 = t361 * t392 + t363 * t367;
	t351 = t355 * qJD(2);
	t376 = t355 * t383 + t351;
	t354 = t361 * t370 + t363 * t393;
	t343 = t354 * t366 + t363 * t394;
	t344 = t354 * t369 - t363 * t395;
	t356 = t363 * t370 - t381;
	t375 = -t356 * t366 + t361 * t394;
	t346 = t356 * t369 + t361 * t395;
	t358 = t364 * t366 + t367 * t394;
	t357 = -t364 * t369 + t367 * t395;
	t350 = t354 * qJD(2);
	t373 = -qJD(5) * t354 - t350 * t366 + t374 * t386;
	t352 = -qJD(2) * t381 + t363 * t388;
	t372 = -qJD(5) * t356 - t352 * t366 - t355 * t386;
	t371 = t369 * t385 + (-qJD(2) * t366 - qJD(5)) * t367;
	t348 = -qJD(3) * t357 + t369 * t379;
	t347 = qJD(3) * t358 + t366 * t379;
	t342 = qJD(3) * t375 - t351 * t369;
	t341 = qJD(3) * t346 - t351 * t366;
	t340 = -qJD(3) * t343 + t349 * t369;
	t339 = qJD(3) * t344 + t349 * t366;
	t1 = [0, t372 * t365 - t368 * t376, t342 * t365 + t346 * t382, 0, t341 * t368 - t352 * t365 + (-t355 * t368 + t365 * t375) * qJD(5), 0; 0, t373 * t365 - t377 * t368, t340 * t365 + t344 * t382, 0, t339 * t368 - t350 * t365 + (-t343 * t365 + t368 * t374) * qJD(5), 0; 0, (t371 * t365 + t378 * t390) * t362, t348 * t365 + t358 * t382, 0, -t365 * t380 + t347 * t368 + (-t357 * t365 + t362 * t390) * qJD(5), 0; 0, t365 * t376 + t372 * t368, t342 * t368 - t346 * t384, 0, -t341 * t365 - t352 * t368 + (t355 * t365 + t368 * t375) * qJD(5), 0; 0, t377 * t365 + t373 * t368, t340 * t368 - t344 * t384, 0, -t339 * t365 - t350 * t368 + (-t343 * t368 - t365 * t374) * qJD(5), 0; 0, (t371 * t368 - t378 * t391) * t362, t348 * t368 - t358 * t384, 0, -t368 * t380 - t347 * t365 + (-t357 * t368 - t362 * t391) * qJD(5), 0; 0, -t352 * t369 + t355 * t387, -t341, 0, 0, 0; 0, -t350 * t369 - t374 * t387, -t339, 0, 0, 0; 0, (-t366 * t385 - t369 * t389) * t362, -t347, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiRD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:37:21
	% EndTime: 2019-10-09 22:37:21
	% DurationCPUTime: 0.38s
	% Computational Cost: add. (341->58), mult. (692->115), div. (0->0), fcn. (758->10), ass. (0->65)
	t431 = cos(qJ(2));
	t422 = qJD(5) + qJD(6);
	t428 = sin(qJ(3));
	t457 = t422 * t428;
	t460 = t431 * (qJD(2) + t457);
	t423 = qJ(5) + qJ(6);
	t420 = sin(t423);
	t459 = t420 * t422;
	t421 = cos(t423);
	t458 = t421 * t422;
	t425 = sin(pkin(6));
	t456 = t425 * t428;
	t430 = cos(qJ(3));
	t455 = t425 * t430;
	t427 = cos(pkin(6));
	t429 = sin(qJ(2));
	t454 = t427 * t429;
	t453 = t427 * t431;
	t452 = qJD(2) * t429;
	t451 = qJD(2) * t431;
	t450 = qJD(3) * t428;
	t449 = qJD(3) * t430;
	t448 = qJD(3) * t431;
	t424 = sin(pkin(11));
	t447 = t424 * t454;
	t446 = t425 * t451;
	t426 = cos(pkin(11));
	t413 = t424 * t431 + t426 * t454;
	t403 = t413 * t430 - t426 * t456;
	t436 = -t424 * t429 + t426 * t453;
	t408 = t436 * qJD(2);
	t398 = t403 * qJD(3) + t408 * t428;
	t445 = -t422 * t436 - t398;
	t415 = t426 * t431 - t447;
	t405 = t415 * t430 + t424 * t456;
	t414 = t424 * t453 + t426 * t429;
	t410 = t414 * qJD(2);
	t400 = t405 * qJD(3) - t410 * t428;
	t444 = t414 * t422 - t400;
	t402 = t413 * t428 + t426 * t455;
	t409 = t413 * qJD(2);
	t443 = -t402 * t422 - t409;
	t411 = -qJD(2) * t447 + t426 * t451;
	t437 = -t415 * t428 + t424 * t455;
	t442 = t422 * t437 - t411;
	t417 = t427 * t428 + t429 * t455;
	t406 = t417 * qJD(3) + t428 * t446;
	t440 = t422 * t425 * t431 + t406;
	t439 = -t436 * t457 - t408;
	t438 = t414 * t457 + t410;
	t416 = -t427 * t430 + t429 * t456;
	t435 = -t416 * t422 - t425 * t452;
	t434 = -t409 * t428 - t413 * t422 + t436 * t449;
	t433 = -t411 * t428 - t414 * t449 - t415 * t422;
	t432 = t430 * t448 + (-qJD(2) * t428 - t422) * t429;
	t407 = -t416 * qJD(3) + t430 * t446;
	t401 = t437 * qJD(3) - t410 * t430;
	t399 = -t402 * qJD(3) + t408 * t430;
	t397 = -t440 * t420 + t435 * t421;
	t396 = t435 * t420 + t440 * t421;
	t395 = t444 * t420 + t442 * t421;
	t394 = t442 * t420 - t444 * t421;
	t393 = t445 * t420 + t443 * t421;
	t392 = t443 * t420 - t445 * t421;
	t1 = [0, t433 * t420 - t438 * t421, t401 * t420 + t405 * t458, 0, t394, t394; 0, t434 * t420 - t439 * t421, t399 * t420 + t403 * t458, 0, t392, t392; 0, (t432 * t420 + t421 * t460) * t425, t407 * t420 + t417 * t458, 0, t396, t396; 0, t438 * t420 + t433 * t421, t401 * t421 - t405 * t459, 0, t395, t395; 0, t439 * t420 + t434 * t421, t399 * t421 - t403 * t459, 0, t393, t393; 0, (-t420 * t460 + t432 * t421) * t425, t407 * t421 - t417 * t459, 0, t397, t397; 0, -t411 * t430 + t414 * t450, -t400, 0, 0, 0; 0, -t409 * t430 - t436 * t450, -t398, 0, 0, 0; 0, (-t428 * t448 - t430 * t452) * t425, -t406, 0, 0, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,6);
end