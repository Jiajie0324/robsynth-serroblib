% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6PRRPRP3
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,theta1,theta4]';
% 
% Output:
% JRD_rot [9x6]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 22:20
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S6PRRPRP3_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRP3_jacobiRD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPRP3_jacobiRD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6PRRPRP3_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRPRP3_jacobiRD_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:20:05
	% EndTime: 2019-10-09 22:20:05
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:20:05
	% EndTime: 2019-10-09 22:20:05
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiRD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:20:05
	% EndTime: 2019-10-09 22:20:05
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (6->6), mult. (24->17), div. (0->0), fcn. (24->6), ass. (0->9)
	t61 = cos(pkin(6));
	t62 = sin(qJ(2));
	t66 = t61 * t62;
	t63 = cos(qJ(2));
	t65 = t61 * t63;
	t64 = qJD(2) * sin(pkin(6));
	t60 = cos(pkin(10));
	t58 = sin(pkin(10));
	t1 = [0, (t58 * t66 - t60 * t63) * qJD(2), 0, 0, 0, 0; 0, (-t58 * t63 - t60 * t66) * qJD(2), 0, 0, 0, 0; 0, -t62 * t64, 0, 0, 0, 0; 0, (t58 * t65 + t60 * t62) * qJD(2), 0, 0, 0, 0; 0, (t58 * t62 - t60 * t65) * qJD(2), 0, 0, 0, 0; 0, -t63 * t64, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiRD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:20:06
	% EndTime: 2019-10-09 22:20:06
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
	t210 = sin(pkin(10));
	t212 = cos(pkin(10));
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
	% StartTime: 2019-10-09 22:20:07
	% EndTime: 2019-10-09 22:20:07
	% DurationCPUTime: 0.22s
	% Computational Cost: add. (64->32), mult. (240->82), div. (0->0), fcn. (252->10), ass. (0->35)
	t299 = sin(pkin(6));
	t303 = sin(qJ(3));
	t320 = t299 * t303;
	t305 = cos(qJ(3));
	t319 = t299 * t305;
	t302 = cos(pkin(6));
	t304 = sin(qJ(2));
	t318 = t302 * t304;
	t306 = cos(qJ(2));
	t317 = t302 * t306;
	t316 = t303 * t304;
	t315 = t304 * t305;
	t314 = qJD(3) * t303;
	t313 = qJD(3) * t305;
	t312 = qJD(3) * t306;
	t311 = qJD(2) * t299 * t306;
	t310 = t303 * t312;
	t298 = sin(pkin(10));
	t301 = cos(pkin(10));
	t293 = -t298 * t304 + t301 * t317;
	t294 = t298 * t306 + t301 * t318;
	t295 = -t298 * t317 - t301 * t304;
	t309 = t298 * t318 - t301 * t306;
	t290 = t294 * qJD(2);
	t308 = t290 * t305 + t293 * t314;
	t292 = t309 * qJD(2);
	t307 = -t292 * t305 + t295 * t314;
	t300 = cos(pkin(11));
	t297 = sin(pkin(11));
	t291 = t295 * qJD(2);
	t289 = t293 * qJD(2);
	t288 = -t303 * t311 + (-t299 * t315 - t302 * t303) * qJD(3);
	t287 = -t291 * t303 + (-t298 * t320 + t305 * t309) * qJD(3);
	t286 = -t289 * t303 + (-t294 * t305 + t301 * t320) * qJD(3);
	t1 = [0, t291 * t297 - t307 * t300, t287 * t300, 0, 0, 0; 0, t289 * t297 - t308 * t300, t286 * t300, 0, 0, 0; 0, (-t300 * t310 + (t297 * t306 - t300 * t315) * qJD(2)) * t299, t288 * t300, 0, 0, 0; 0, t291 * t300 + t307 * t297, -t287 * t297, 0, 0, 0; 0, t289 * t300 + t308 * t297, -t286 * t297, 0, 0, 0; 0, (t297 * t310 + (t297 * t315 + t300 * t306) * qJD(2)) * t299, -t288 * t297, 0, 0, 0; 0, t292 * t303 + t295 * t313, t291 * t305 + (t298 * t319 + t303 * t309) * qJD(3), 0, 0, 0; 0, -t290 * t303 + t293 * t313, t289 * t305 + (-t294 * t303 - t301 * t319) * qJD(3), 0, 0, 0; 0, (-qJD(2) * t316 + t305 * t312) * t299, t305 * t311 + (-t299 * t316 + t302 * t305) * qJD(3), 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:20:07
	% EndTime: 2019-10-09 22:20:07
	% DurationCPUTime: 0.31s
	% Computational Cost: add. (219->60), mult. (516->127), div. (0->0), fcn. (564->10), ass. (0->54)
	t369 = sin(qJ(3));
	t370 = sin(qJ(2));
	t371 = cos(qJ(3));
	t372 = cos(qJ(2));
	t388 = qJD(3) * t372;
	t398 = (qJD(2) * t371 - qJD(5)) * t370 + t369 * t388;
	t366 = sin(pkin(6));
	t397 = t366 * t369;
	t396 = t366 * t371;
	t395 = t366 * t372;
	t368 = cos(pkin(6));
	t394 = t368 * t370;
	t393 = t368 * t372;
	t392 = qJD(2) * t370;
	t391 = qJD(2) * t372;
	t390 = qJD(3) * t369;
	t389 = qJD(3) * t371;
	t364 = pkin(11) + qJ(5);
	t362 = sin(t364);
	t387 = qJD(5) * t362;
	t363 = cos(t364);
	t386 = qJD(5) * t363;
	t385 = qJD(5) * t371;
	t365 = sin(pkin(10));
	t384 = t365 * t394;
	t383 = t366 * t392;
	t382 = t366 * t391;
	t367 = cos(pkin(10));
	t375 = -t365 * t370 + t367 * t393;
	t350 = t375 * qJD(2);
	t379 = -t375 * t385 + t350;
	t356 = t365 * t393 + t367 * t370;
	t352 = t356 * qJD(2);
	t378 = t356 * t385 - t352;
	t377 = (qJD(2) - t385) * t372;
	t355 = t365 * t372 + t367 * t394;
	t344 = -t355 * t369 - t367 * t396;
	t376 = -t355 * t371 + t367 * t397;
	t357 = t367 * t372 - t384;
	t346 = -t357 * t369 + t365 * t396;
	t347 = t357 * t371 + t365 * t397;
	t359 = t368 * t369 + t370 * t396;
	t358 = t368 * t371 - t370 * t397;
	t351 = t355 * qJD(2);
	t374 = qJD(5) * t355 - t351 * t371 - t375 * t390;
	t353 = -qJD(2) * t384 + t367 * t391;
	t373 = qJD(5) * t357 - t353 * t371 + t356 * t390;
	t349 = t358 * qJD(3) + t371 * t382;
	t348 = -t359 * qJD(3) - t369 * t382;
	t343 = t346 * qJD(3) - t352 * t371;
	t342 = -t347 * qJD(3) + t352 * t369;
	t341 = t344 * qJD(3) + t350 * t371;
	t340 = t376 * qJD(3) - t350 * t369;
	t1 = [0, t378 * t362 + t373 * t363, t342 * t363 - t346 * t387, 0, -t343 * t362 + t353 * t363 + (-t347 * t363 - t356 * t362) * qJD(5), 0; 0, t379 * t362 + t374 * t363, t340 * t363 - t344 * t387, 0, -t341 * t362 + t351 * t363 + (t362 * t375 + t363 * t376) * qJD(5), 0; 0, (t362 * t377 - t398 * t363) * t366, t348 * t363 - t358 * t387, 0, t363 * t383 - t349 * t362 + (-t359 * t363 + t362 * t395) * qJD(5), 0; 0, -t373 * t362 + t378 * t363, -t342 * t362 - t346 * t386, 0, -t343 * t363 - t353 * t362 + (t347 * t362 - t356 * t363) * qJD(5), 0; 0, -t374 * t362 + t379 * t363, -t340 * t362 - t344 * t386, 0, -t341 * t363 - t351 * t362 + (-t362 * t376 + t363 * t375) * qJD(5), 0; 0, (t398 * t362 + t363 * t377) * t366, -t348 * t362 - t358 * t386, 0, -t362 * t383 - t349 * t363 + (t359 * t362 + t363 * t395) * qJD(5), 0; 0, -t353 * t369 - t356 * t389, t343, 0, 0, 0; 0, -t351 * t369 + t375 * t389, t341, 0, 0, 0; 0, (-t369 * t392 + t371 * t388) * t366, t349, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiRD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:20:09
	% EndTime: 2019-10-09 22:20:09
	% DurationCPUTime: 0.31s
	% Computational Cost: add. (219->60), mult. (516->127), div. (0->0), fcn. (564->10), ass. (0->54)
	t460 = cos(qJ(2));
	t459 = cos(qJ(3));
	t472 = qJD(5) * t459;
	t485 = t460 * (-qJD(2) + t472);
	t454 = sin(pkin(6));
	t457 = sin(qJ(3));
	t484 = t454 * t457;
	t483 = t454 * t459;
	t482 = t454 * t460;
	t456 = cos(pkin(6));
	t458 = sin(qJ(2));
	t481 = t456 * t458;
	t480 = t456 * t460;
	t479 = qJD(2) * t458;
	t478 = qJD(2) * t460;
	t477 = qJD(3) * t457;
	t476 = qJD(3) * t459;
	t475 = qJD(3) * t460;
	t452 = pkin(11) + qJ(5);
	t450 = sin(t452);
	t474 = qJD(5) * t450;
	t451 = cos(t452);
	t473 = qJD(5) * t451;
	t453 = sin(pkin(10));
	t471 = t453 * t481;
	t470 = t454 * t479;
	t469 = t454 * t478;
	t455 = cos(pkin(10));
	t464 = -t453 * t458 + t455 * t480;
	t438 = t464 * qJD(2);
	t467 = -t464 * t472 + t438;
	t444 = t453 * t480 + t455 * t458;
	t440 = t444 * qJD(2);
	t466 = t444 * t472 - t440;
	t443 = t453 * t460 + t455 * t481;
	t432 = -t443 * t457 - t455 * t483;
	t465 = -t443 * t459 + t455 * t484;
	t445 = t455 * t460 - t471;
	t434 = -t445 * t457 + t453 * t483;
	t435 = t445 * t459 + t453 * t484;
	t447 = t456 * t457 + t458 * t483;
	t446 = t456 * t459 - t458 * t484;
	t439 = t443 * qJD(2);
	t463 = qJD(5) * t443 - t439 * t459 - t464 * t477;
	t441 = -qJD(2) * t471 + t455 * t478;
	t462 = qJD(5) * t445 - t441 * t459 + t444 * t477;
	t461 = -t457 * t475 + (-qJD(2) * t459 + qJD(5)) * t458;
	t437 = t446 * qJD(3) + t459 * t469;
	t436 = -t447 * qJD(3) - t457 * t469;
	t431 = t434 * qJD(3) - t440 * t459;
	t430 = -t435 * qJD(3) + t440 * t457;
	t429 = t432 * qJD(3) + t438 * t459;
	t428 = t465 * qJD(3) - t438 * t457;
	t1 = [0, t466 * t450 + t462 * t451, t430 * t451 - t434 * t474, 0, -t431 * t450 + t441 * t451 + (-t435 * t451 - t444 * t450) * qJD(5), 0; 0, t467 * t450 + t463 * t451, t428 * t451 - t432 * t474, 0, -t429 * t450 + t439 * t451 + (t450 * t464 + t451 * t465) * qJD(5), 0; 0, (-t450 * t485 + t461 * t451) * t454, t436 * t451 - t446 * t474, 0, t451 * t470 - t437 * t450 + (-t447 * t451 + t450 * t482) * qJD(5), 0; 0, -t441 * t457 - t444 * t476, t431, 0, 0, 0; 0, -t439 * t457 + t464 * t476, t429, 0, 0, 0; 0, (-t457 * t479 + t459 * t475) * t454, t437, 0, 0, 0; 0, t462 * t450 - t466 * t451, t430 * t450 + t434 * t473, 0, t431 * t451 + t441 * t450 + (-t435 * t450 + t444 * t451) * qJD(5), 0; 0, t463 * t450 - t467 * t451, t428 * t450 + t432 * t473, 0, t429 * t451 + t439 * t450 + (t450 * t465 - t451 * t464) * qJD(5), 0; 0, (t461 * t450 + t451 * t485) * t454, t436 * t450 + t446 * t473, 0, t450 * t470 + t437 * t451 + (-t447 * t450 - t451 * t482) * qJD(5), 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,6);
end