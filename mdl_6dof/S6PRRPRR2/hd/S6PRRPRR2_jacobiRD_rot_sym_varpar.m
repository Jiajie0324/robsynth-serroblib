% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6PRRPRR2
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
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,d6,theta1,theta4]';
% 
% Output:
% JRD_rot [9x6]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 22:27
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S6PRRPRR2_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRR2_jacobiRD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPRR2_jacobiRD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6PRRPRR2_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRPRR2_jacobiRD_rot_sym_varpar: pkin has to be [12x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:27:29
	% EndTime: 2019-10-09 22:27:29
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:27:29
	% EndTime: 2019-10-09 22:27:29
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiRD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:27:29
	% EndTime: 2019-10-09 22:27:29
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
	% StartTime: 2019-10-09 22:27:30
	% EndTime: 2019-10-09 22:27:30
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
	% StartTime: 2019-10-09 22:27:30
	% EndTime: 2019-10-09 22:27:30
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (66->23), mult. (140->60), div. (0->0), fcn. (148->8), ass. (0->28)
	t230 = sin(pkin(11));
	t231 = sin(pkin(6));
	t246 = t230 * t231;
	t232 = cos(pkin(11));
	t245 = t231 * t232;
	t234 = sin(qJ(2));
	t244 = t231 * t234;
	t233 = cos(pkin(6));
	t243 = t233 * t234;
	t235 = cos(qJ(2));
	t242 = t233 * t235;
	t241 = qJD(2) * t234;
	t229 = qJ(3) + pkin(12);
	t227 = sin(t229);
	t240 = qJD(3) * t227;
	t228 = cos(t229);
	t239 = qJD(3) * t228;
	t238 = qJD(3) * t235;
	t237 = t231 * qJD(2) * t235;
	t223 = -t230 * t234 + t232 * t242;
	t224 = t230 * t235 + t232 * t243;
	t225 = -t230 * t242 - t232 * t234;
	t236 = t230 * t243 - t232 * t235;
	t222 = t236 * qJD(2);
	t221 = t225 * qJD(2);
	t220 = t224 * qJD(2);
	t219 = t223 * qJD(2);
	t1 = [0, t222 * t228 - t225 * t240, -t221 * t227 + (-t227 * t246 + t228 * t236) * qJD(3), 0, 0, 0; 0, -t220 * t228 - t223 * t240, -t219 * t227 + (-t224 * t228 + t227 * t245) * qJD(3), 0, 0, 0; 0, (-t227 * t238 - t228 * t241) * t231, -t227 * t237 + (-t227 * t233 - t228 * t244) * qJD(3), 0, 0, 0; 0, -t222 * t227 - t225 * t239, -t221 * t228 + (-t227 * t236 - t228 * t246) * qJD(3), 0, 0, 0; 0, t220 * t227 - t223 * t239, -t219 * t228 + (t224 * t227 + t228 * t245) * qJD(3), 0, 0, 0; 0, (t227 * t241 - t228 * t238) * t231, -t228 * t237 + (t227 * t244 - t228 * t233) * qJD(3), 0, 0, 0; 0, t221, 0, 0, 0, 0; 0, t219, 0, 0, 0, 0; 0, t237, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:27:31
	% EndTime: 2019-10-09 22:27:31
	% DurationCPUTime: 0.37s
	% Computational Cost: add. (246->60), mult. (516->128), div. (0->0), fcn. (564->10), ass. (0->55)
	t376 = qJ(3) + pkin(12);
	t374 = sin(t376);
	t375 = cos(t376);
	t382 = sin(qJ(2));
	t384 = cos(qJ(2));
	t400 = qJD(3) * t384;
	t411 = (qJD(2) * t375 - qJD(5)) * t382 + t374 * t400;
	t377 = sin(pkin(11));
	t378 = sin(pkin(6));
	t410 = t377 * t378;
	t379 = cos(pkin(11));
	t409 = t378 * t379;
	t408 = t378 * t382;
	t407 = t378 * t384;
	t380 = cos(pkin(6));
	t406 = t380 * t382;
	t405 = t380 * t384;
	t404 = qJD(2) * t382;
	t403 = qJD(2) * t384;
	t402 = qJD(3) * t374;
	t401 = qJD(3) * t375;
	t399 = qJD(5) * t375;
	t381 = sin(qJ(5));
	t398 = qJD(5) * t381;
	t383 = cos(qJ(5));
	t397 = qJD(5) * t383;
	t396 = t377 * t406;
	t395 = t378 * t404;
	t394 = t378 * t403;
	t387 = -t377 * t382 + t379 * t405;
	t364 = t387 * qJD(2);
	t391 = -t387 * t399 + t364;
	t370 = t377 * t405 + t379 * t382;
	t366 = t370 * qJD(2);
	t390 = t370 * t399 - t366;
	t389 = (qJD(2) - t399) * t384;
	t369 = t377 * t384 + t379 * t406;
	t358 = -t369 * t374 - t375 * t409;
	t388 = -t369 * t375 + t374 * t409;
	t371 = t379 * t384 - t396;
	t360 = -t371 * t374 + t375 * t410;
	t361 = t371 * t375 + t374 * t410;
	t363 = t380 * t374 + t375 * t408;
	t362 = -t374 * t408 + t380 * t375;
	t365 = t369 * qJD(2);
	t386 = qJD(5) * t369 - t365 * t375 - t387 * t402;
	t367 = -qJD(2) * t396 + t379 * t403;
	t385 = qJD(5) * t371 - t367 * t375 + t370 * t402;
	t357 = t362 * qJD(3) + t375 * t394;
	t356 = -t363 * qJD(3) - t374 * t394;
	t355 = t360 * qJD(3) - t366 * t375;
	t354 = -t361 * qJD(3) + t366 * t374;
	t353 = t358 * qJD(3) + t364 * t375;
	t352 = t388 * qJD(3) - t364 * t374;
	t1 = [0, t390 * t381 + t385 * t383, t354 * t383 - t360 * t398, 0, -t355 * t381 + t367 * t383 + (-t361 * t383 - t370 * t381) * qJD(5), 0; 0, t391 * t381 + t386 * t383, t352 * t383 - t358 * t398, 0, -t353 * t381 + t365 * t383 + (t381 * t387 + t383 * t388) * qJD(5), 0; 0, (t381 * t389 - t411 * t383) * t378, t356 * t383 - t362 * t398, 0, t383 * t395 - t357 * t381 + (-t363 * t383 + t381 * t407) * qJD(5), 0; 0, -t385 * t381 + t390 * t383, -t354 * t381 - t360 * t397, 0, -t355 * t383 - t367 * t381 + (t361 * t381 - t370 * t383) * qJD(5), 0; 0, -t386 * t381 + t391 * t383, -t352 * t381 - t358 * t397, 0, -t353 * t383 - t365 * t381 + (-t381 * t388 + t383 * t387) * qJD(5), 0; 0, (t411 * t381 + t383 * t389) * t378, -t356 * t381 - t362 * t397, 0, -t381 * t395 - t357 * t383 + (t363 * t381 + t383 * t407) * qJD(5), 0; 0, -t367 * t374 - t370 * t401, t355, 0, 0, 0; 0, -t365 * t374 + t387 * t401, t353, 0, 0, 0; 0, (-t374 * t404 + t375 * t400) * t378, t357, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiRD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:27:31
	% EndTime: 2019-10-09 22:27:32
	% DurationCPUTime: 0.33s
	% Computational Cost: add. (464->56), mult. (692->116), div. (0->0), fcn. (758->10), ass. (0->67)
	t441 = qJ(3) + pkin(12);
	t436 = sin(t441);
	t437 = cos(t441);
	t440 = qJD(5) + qJD(6);
	t447 = sin(qJ(2));
	t448 = cos(qJ(2));
	t466 = qJD(3) * t448;
	t479 = (qJD(2) * t437 - t440) * t447 + t436 * t466;
	t478 = t437 * t440;
	t442 = qJ(5) + qJ(6);
	t438 = sin(t442);
	t477 = t438 * t440;
	t439 = cos(t442);
	t476 = t439 * t440;
	t443 = sin(pkin(11));
	t444 = sin(pkin(6));
	t475 = t443 * t444;
	t445 = cos(pkin(11));
	t474 = t444 * t445;
	t473 = t444 * t447;
	t446 = cos(pkin(6));
	t472 = t446 * t447;
	t471 = t446 * t448;
	t470 = qJD(2) * t447;
	t469 = qJD(2) * t448;
	t468 = qJD(3) * t436;
	t467 = qJD(3) * t437;
	t465 = t443 * t472;
	t464 = t444 * t469;
	t431 = t443 * t448 + t445 * t472;
	t420 = -t431 * t436 - t437 * t474;
	t452 = -t443 * t447 + t445 * t471;
	t426 = t452 * qJD(2);
	t415 = t420 * qJD(3) + t426 * t437;
	t462 = t440 * t452 - t415;
	t433 = t445 * t448 - t465;
	t422 = -t433 * t436 + t437 * t475;
	t432 = t443 * t471 + t445 * t447;
	t428 = t432 * qJD(2);
	t417 = t422 * qJD(3) - t428 * t437;
	t461 = -t432 * t440 - t417;
	t427 = t431 * qJD(2);
	t453 = -t431 * t437 + t436 * t474;
	t460 = -t440 * t453 - t427;
	t423 = t433 * t437 + t436 * t475;
	t429 = -qJD(2) * t465 + t445 * t469;
	t459 = t423 * t440 - t429;
	t424 = -t436 * t473 + t446 * t437;
	t419 = t424 * qJD(3) + t437 * t464;
	t457 = t440 * t444 * t448 - t419;
	t456 = -t452 * t478 + t426;
	t455 = t432 * t478 - t428;
	t454 = (qJD(2) - t478) * t448;
	t425 = t446 * t436 + t437 * t473;
	t451 = -t425 * t440 + t444 * t470;
	t450 = -t427 * t437 + t431 * t440 - t452 * t468;
	t449 = -t429 * t437 + t432 * t468 + t433 * t440;
	t418 = -t425 * qJD(3) - t436 * t464;
	t416 = -t423 * qJD(3) + t428 * t436;
	t414 = t453 * qJD(3) - t426 * t436;
	t413 = -t451 * t438 + t457 * t439;
	t412 = t457 * t438 + t451 * t439;
	t411 = t459 * t438 + t461 * t439;
	t410 = t461 * t438 - t459 * t439;
	t409 = t460 * t438 + t462 * t439;
	t408 = t462 * t438 - t460 * t439;
	t1 = [0, t455 * t438 + t449 * t439, t416 * t439 - t422 * t477, 0, t410, t410; 0, t456 * t438 + t450 * t439, t414 * t439 - t420 * t477, 0, t408, t408; 0, (t438 * t454 - t479 * t439) * t444, t418 * t439 - t424 * t477, 0, t412, t412; 0, -t449 * t438 + t455 * t439, -t416 * t438 - t422 * t476, 0, t411, t411; 0, -t450 * t438 + t456 * t439, -t414 * t438 - t420 * t476, 0, t409, t409; 0, (t479 * t438 + t439 * t454) * t444, -t418 * t438 - t424 * t476, 0, t413, t413; 0, -t429 * t436 - t432 * t467, t417, 0, 0, 0; 0, -t427 * t436 + t452 * t467, t415, 0, 0, 0; 0, (-t436 * t470 + t437 * t466) * t444, t419, 0, 0, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,6);
end