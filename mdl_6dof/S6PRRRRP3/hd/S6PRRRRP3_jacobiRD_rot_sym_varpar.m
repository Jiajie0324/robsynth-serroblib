% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6PRRRRP3
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,d5,theta1]';
% 
% Output:
% JRD_rot [9x6]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 23:05
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S6PRRRRP3_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRRP3_jacobiRD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRRP3_jacobiRD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6PRRRRP3_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRRRP3_jacobiRD_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:05:49
	% EndTime: 2019-10-09 23:05:49
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:05:49
	% EndTime: 2019-10-09 23:05:49
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiRD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:05:49
	% EndTime: 2019-10-09 23:05:49
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
	% StartTime: 2019-10-09 23:05:50
	% EndTime: 2019-10-09 23:05:50
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
	% StartTime: 2019-10-09 23:05:51
	% EndTime: 2019-10-09 23:05:52
	% DurationCPUTime: 0.37s
	% Computational Cost: add. (153->59), mult. (516->127), div. (0->0), fcn. (564->10), ass. (0->53)
	t354 = sin(qJ(3));
	t355 = sin(qJ(2));
	t357 = cos(qJ(3));
	t358 = cos(qJ(2));
	t374 = qJD(3) * t358;
	t384 = (qJD(2) * t357 - qJD(4)) * t355 + t354 * t374;
	t350 = sin(pkin(6));
	t383 = t350 * t354;
	t382 = t350 * t357;
	t381 = t350 * t358;
	t352 = cos(pkin(6));
	t380 = t352 * t355;
	t379 = t352 * t358;
	t378 = qJD(2) * t355;
	t377 = qJD(2) * t358;
	t376 = qJD(3) * t354;
	t375 = qJD(3) * t357;
	t353 = sin(qJ(4));
	t373 = qJD(4) * t353;
	t356 = cos(qJ(4));
	t372 = qJD(4) * t356;
	t371 = qJD(4) * t357;
	t349 = sin(pkin(11));
	t370 = t349 * t380;
	t369 = t350 * t378;
	t368 = t350 * t377;
	t351 = cos(pkin(11));
	t361 = -t349 * t355 + t351 * t379;
	t337 = t361 * qJD(2);
	t365 = -t361 * t371 + t337;
	t343 = t349 * t379 + t351 * t355;
	t339 = t343 * qJD(2);
	t364 = t343 * t371 - t339;
	t363 = (qJD(2) - t371) * t358;
	t342 = t349 * t358 + t351 * t380;
	t331 = -t342 * t354 - t351 * t382;
	t362 = -t342 * t357 + t351 * t383;
	t344 = t351 * t358 - t370;
	t333 = -t344 * t354 + t349 * t382;
	t334 = t344 * t357 + t349 * t383;
	t346 = t352 * t354 + t355 * t382;
	t345 = t352 * t357 - t355 * t383;
	t338 = t342 * qJD(2);
	t360 = qJD(4) * t342 - t338 * t357 - t361 * t376;
	t340 = -qJD(2) * t370 + t351 * t377;
	t359 = qJD(4) * t344 - t340 * t357 + t343 * t376;
	t336 = t345 * qJD(3) + t357 * t368;
	t335 = -t346 * qJD(3) - t354 * t368;
	t330 = t333 * qJD(3) - t339 * t357;
	t329 = -t334 * qJD(3) + t339 * t354;
	t328 = t331 * qJD(3) + t337 * t357;
	t327 = t362 * qJD(3) - t337 * t354;
	t1 = [0, t364 * t353 + t359 * t356, t329 * t356 - t333 * t373, -t330 * t353 + t340 * t356 + (-t334 * t356 - t343 * t353) * qJD(4), 0, 0; 0, t365 * t353 + t360 * t356, t327 * t356 - t331 * t373, -t328 * t353 + t338 * t356 + (t353 * t361 + t356 * t362) * qJD(4), 0, 0; 0, (t353 * t363 - t384 * t356) * t350, t335 * t356 - t345 * t373, t356 * t369 - t336 * t353 + (-t346 * t356 + t353 * t381) * qJD(4), 0, 0; 0, -t359 * t353 + t364 * t356, -t329 * t353 - t333 * t372, -t330 * t356 - t340 * t353 + (t334 * t353 - t343 * t356) * qJD(4), 0, 0; 0, -t360 * t353 + t365 * t356, -t327 * t353 - t331 * t372, -t328 * t356 - t338 * t353 + (-t353 * t362 + t356 * t361) * qJD(4), 0, 0; 0, (t384 * t353 + t356 * t363) * t350, -t335 * t353 - t345 * t372, -t353 * t369 - t336 * t356 + (t346 * t353 + t356 * t381) * qJD(4), 0, 0; 0, -t340 * t354 - t343 * t375, t330, 0, 0, 0; 0, -t338 * t354 + t361 * t375, t328, 0, 0, 0; 0, (-t354 * t378 + t357 * t374) * t350, t336, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:05:52
	% EndTime: 2019-10-09 23:05:52
	% DurationCPUTime: 0.39s
	% Computational Cost: add. (341->55), mult. (692->115), div. (0->0), fcn. (758->10), ass. (0->65)
	t415 = qJD(4) + qJD(5);
	t421 = sin(qJ(3));
	t422 = sin(qJ(2));
	t423 = cos(qJ(3));
	t424 = cos(qJ(2));
	t442 = qJD(3) * t424;
	t454 = (qJD(2) * t423 - t415) * t422 + t421 * t442;
	t416 = qJ(4) + qJ(5);
	t413 = sin(t416);
	t453 = t413 * t415;
	t414 = cos(t416);
	t452 = t414 * t415;
	t451 = t415 * t423;
	t418 = sin(pkin(6));
	t450 = t418 * t421;
	t449 = t418 * t423;
	t420 = cos(pkin(6));
	t448 = t420 * t422;
	t447 = t420 * t424;
	t446 = qJD(2) * t422;
	t445 = qJD(2) * t424;
	t444 = qJD(3) * t421;
	t443 = qJD(3) * t423;
	t417 = sin(pkin(11));
	t441 = t417 * t448;
	t440 = t418 * t445;
	t419 = cos(pkin(11));
	t406 = t417 * t424 + t419 * t448;
	t395 = -t406 * t421 - t419 * t449;
	t428 = -t417 * t422 + t419 * t447;
	t401 = t428 * qJD(2);
	t392 = t395 * qJD(3) + t401 * t423;
	t438 = t415 * t428 - t392;
	t408 = t419 * t424 - t441;
	t397 = -t408 * t421 + t417 * t449;
	t407 = t417 * t447 + t419 * t422;
	t403 = t407 * qJD(2);
	t394 = t397 * qJD(3) - t403 * t423;
	t437 = -t407 * t415 - t394;
	t402 = t406 * qJD(2);
	t429 = -t406 * t423 + t419 * t450;
	t436 = -t415 * t429 - t402;
	t398 = t408 * t423 + t417 * t450;
	t404 = -qJD(2) * t441 + t419 * t445;
	t435 = t398 * t415 - t404;
	t409 = t420 * t423 - t422 * t450;
	t400 = t409 * qJD(3) + t423 * t440;
	t433 = t415 * t418 * t424 - t400;
	t432 = -t428 * t451 + t401;
	t431 = t407 * t451 - t403;
	t430 = (qJD(2) - t451) * t424;
	t410 = t420 * t421 + t422 * t449;
	t427 = -t410 * t415 + t418 * t446;
	t426 = -t402 * t423 + t406 * t415 - t428 * t444;
	t425 = -t404 * t423 + t407 * t444 + t408 * t415;
	t399 = -t410 * qJD(3) - t421 * t440;
	t393 = -t398 * qJD(3) + t403 * t421;
	t391 = t429 * qJD(3) - t401 * t421;
	t390 = -t427 * t413 + t433 * t414;
	t389 = t433 * t413 + t427 * t414;
	t388 = t435 * t413 + t437 * t414;
	t387 = t437 * t413 - t435 * t414;
	t386 = t436 * t413 + t438 * t414;
	t385 = t438 * t413 - t436 * t414;
	t1 = [0, t431 * t413 + t425 * t414, t393 * t414 - t397 * t453, t387, t387, 0; 0, t432 * t413 + t426 * t414, t391 * t414 - t395 * t453, t385, t385, 0; 0, (t413 * t430 - t454 * t414) * t418, t399 * t414 - t409 * t453, t389, t389, 0; 0, -t425 * t413 + t431 * t414, -t393 * t413 - t397 * t452, t388, t388, 0; 0, -t426 * t413 + t432 * t414, -t391 * t413 - t395 * t452, t386, t386, 0; 0, (t454 * t413 + t414 * t430) * t418, -t399 * t413 - t409 * t452, t390, t390, 0; 0, -t404 * t421 - t407 * t443, t394, 0, 0, 0; 0, -t402 * t421 + t428 * t443, t392, 0, 0, 0; 0, (-t421 * t446 + t423 * t442) * t418, t400, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiRD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 23:05:52
	% EndTime: 2019-10-09 23:05:52
	% DurationCPUTime: 0.32s
	% Computational Cost: add. (341->55), mult. (692->115), div. (0->0), fcn. (758->10), ass. (0->65)
	t429 = qJD(4) + qJD(5);
	t435 = sin(qJ(3));
	t436 = sin(qJ(2));
	t437 = cos(qJ(3));
	t438 = cos(qJ(2));
	t456 = qJD(3) * t438;
	t468 = (qJD(2) * t437 - t429) * t436 + t435 * t456;
	t430 = qJ(4) + qJ(5);
	t427 = sin(t430);
	t467 = t427 * t429;
	t428 = cos(t430);
	t466 = t428 * t429;
	t465 = t429 * t437;
	t432 = sin(pkin(6));
	t464 = t432 * t435;
	t463 = t432 * t437;
	t434 = cos(pkin(6));
	t462 = t434 * t436;
	t461 = t434 * t438;
	t460 = qJD(2) * t436;
	t459 = qJD(2) * t438;
	t458 = qJD(3) * t435;
	t457 = qJD(3) * t437;
	t431 = sin(pkin(11));
	t455 = t431 * t462;
	t454 = t432 * t459;
	t433 = cos(pkin(11));
	t420 = t431 * t438 + t433 * t462;
	t409 = -t420 * t435 - t433 * t463;
	t442 = -t431 * t436 + t433 * t461;
	t415 = t442 * qJD(2);
	t406 = t409 * qJD(3) + t415 * t437;
	t452 = t429 * t442 - t406;
	t422 = t433 * t438 - t455;
	t411 = -t422 * t435 + t431 * t463;
	t421 = t431 * t461 + t433 * t436;
	t417 = t421 * qJD(2);
	t408 = t411 * qJD(3) - t417 * t437;
	t451 = -t421 * t429 - t408;
	t416 = t420 * qJD(2);
	t443 = -t420 * t437 + t433 * t464;
	t450 = -t429 * t443 - t416;
	t412 = t422 * t437 + t431 * t464;
	t418 = -qJD(2) * t455 + t433 * t459;
	t449 = t412 * t429 - t418;
	t423 = t434 * t437 - t436 * t464;
	t414 = t423 * qJD(3) + t437 * t454;
	t447 = t429 * t432 * t438 - t414;
	t446 = -t442 * t465 + t415;
	t445 = t421 * t465 - t417;
	t444 = (qJD(2) - t465) * t438;
	t424 = t434 * t435 + t436 * t463;
	t441 = -t424 * t429 + t432 * t460;
	t440 = -t416 * t437 + t420 * t429 - t442 * t458;
	t439 = -t418 * t437 + t421 * t458 + t422 * t429;
	t413 = -t424 * qJD(3) - t435 * t454;
	t407 = -t412 * qJD(3) + t417 * t435;
	t405 = t443 * qJD(3) - t415 * t435;
	t404 = -t441 * t427 + t447 * t428;
	t403 = t447 * t427 + t441 * t428;
	t402 = t449 * t427 + t451 * t428;
	t401 = t451 * t427 - t449 * t428;
	t400 = t450 * t427 + t452 * t428;
	t399 = t452 * t427 - t450 * t428;
	t1 = [0, t445 * t427 + t439 * t428, t407 * t428 - t411 * t467, t401, t401, 0; 0, t446 * t427 + t440 * t428, t405 * t428 - t409 * t467, t399, t399, 0; 0, (t427 * t444 - t468 * t428) * t432, t413 * t428 - t423 * t467, t403, t403, 0; 0, -t439 * t427 + t445 * t428, -t407 * t427 - t411 * t466, t402, t402, 0; 0, -t440 * t427 + t446 * t428, -t405 * t427 - t409 * t466, t400, t400, 0; 0, (t468 * t427 + t428 * t444) * t432, -t413 * t427 - t423 * t466, t404, t404, 0; 0, -t418 * t435 - t421 * t457, t408, 0, 0, 0; 0, -t416 * t435 + t442 * t457, t406, 0, 0, 0; 0, (-t435 * t460 + t437 * t456) * t432, t414, 0, 0, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,6);
end