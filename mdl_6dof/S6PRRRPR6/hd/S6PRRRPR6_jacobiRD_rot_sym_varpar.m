% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6PRRRPR6
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,d6,theta1]';
% 
% Output:
% JRD_rot [9x6]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 22:56
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S6PRRRPR6_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPR6_jacobiRD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRPR6_jacobiRD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6PRRRPR6_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRRPR6_jacobiRD_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:56:07
	% EndTime: 2019-10-09 22:56:07
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:56:07
	% EndTime: 2019-10-09 22:56:07
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiRD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:56:07
	% EndTime: 2019-10-09 22:56:07
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
	% StartTime: 2019-10-09 22:56:08
	% EndTime: 2019-10-09 22:56:08
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
	% StartTime: 2019-10-09 22:56:09
	% EndTime: 2019-10-09 22:56:10
	% DurationCPUTime: 0.36s
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
	% StartTime: 2019-10-09 22:56:10
	% EndTime: 2019-10-09 22:56:11
	% DurationCPUTime: 0.38s
	% Computational Cost: add. (153->59), mult. (516->127), div. (0->0), fcn. (564->10), ass. (0->54)
	t431 = sin(pkin(6));
	t435 = sin(qJ(3));
	t464 = t431 * t435;
	t438 = cos(qJ(3));
	t463 = t431 * t438;
	t433 = cos(pkin(6));
	t436 = sin(qJ(2));
	t462 = t433 * t436;
	t439 = cos(qJ(2));
	t461 = t433 * t439;
	t434 = sin(qJ(4));
	t460 = t434 * t439;
	t437 = cos(qJ(4));
	t459 = t437 * t439;
	t458 = qJD(2) * t436;
	t457 = qJD(2) * t439;
	t456 = qJD(3) * t435;
	t455 = qJD(3) * t438;
	t454 = qJD(3) * t439;
	t453 = qJD(4) * t434;
	t452 = qJD(4) * t437;
	t451 = qJD(4) * t438;
	t430 = sin(pkin(11));
	t450 = t430 * t462;
	t449 = t431 * t458;
	t448 = t431 * t457;
	t447 = -qJD(2) + t451;
	t432 = cos(pkin(11));
	t443 = -t430 * t436 + t432 * t461;
	t418 = t443 * qJD(2);
	t446 = -t443 * t451 + t418;
	t424 = t430 * t461 + t432 * t436;
	t420 = t424 * qJD(2);
	t445 = t424 * t451 - t420;
	t423 = t430 * t439 + t432 * t462;
	t412 = -t423 * t435 - t432 * t463;
	t444 = -t423 * t438 + t432 * t464;
	t425 = t432 * t439 - t450;
	t414 = -t425 * t435 + t430 * t463;
	t415 = t425 * t438 + t430 * t464;
	t427 = t433 * t435 + t436 * t463;
	t426 = t433 * t438 - t436 * t464;
	t419 = t423 * qJD(2);
	t442 = qJD(4) * t423 - t419 * t438 - t443 * t456;
	t421 = -qJD(2) * t450 + t432 * t457;
	t441 = qJD(4) * t425 - t421 * t438 + t424 * t456;
	t440 = -t435 * t454 + (-qJD(2) * t438 + qJD(4)) * t436;
	t417 = t426 * qJD(3) + t438 * t448;
	t416 = -t427 * qJD(3) - t435 * t448;
	t411 = t414 * qJD(3) - t420 * t438;
	t410 = -t415 * qJD(3) + t420 * t435;
	t409 = t412 * qJD(3) + t418 * t438;
	t408 = t444 * qJD(3) - t418 * t435;
	t1 = [0, t445 * t434 + t441 * t437, t410 * t437 - t414 * t453, -t411 * t434 + t421 * t437 + (-t415 * t437 - t424 * t434) * qJD(4), 0, 0; 0, t446 * t434 + t442 * t437, t408 * t437 - t412 * t453, -t409 * t434 + t419 * t437 + (t434 * t443 + t437 * t444) * qJD(4), 0, 0; 0, (t440 * t437 - t447 * t460) * t431, t416 * t437 - t426 * t453, t437 * t449 - t417 * t434 + (-t427 * t437 + t431 * t460) * qJD(4), 0, 0; 0, -t421 * t435 - t424 * t455, t411, 0, 0, 0; 0, -t419 * t435 + t443 * t455, t409, 0, 0, 0; 0, (-t435 * t458 + t438 * t454) * t431, t417, 0, 0, 0; 0, t441 * t434 - t445 * t437, t410 * t434 + t414 * t452, t411 * t437 + t421 * t434 + (-t415 * t434 + t424 * t437) * qJD(4), 0, 0; 0, t442 * t434 - t446 * t437, t408 * t434 + t412 * t452, t409 * t437 + t419 * t434 + (t434 * t444 - t437 * t443) * qJD(4), 0, 0; 0, (t440 * t434 + t447 * t459) * t431, t416 * t434 + t426 * t452, t434 * t449 + t417 * t437 + (-t427 * t434 - t431 * t459) * qJD(4), 0, 0;];
	JRD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiRD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 22:56:11
	% EndTime: 2019-10-09 22:56:12
	% DurationCPUTime: 0.70s
	% Computational Cost: add. (601->113), mult. (1864->208), div. (0->0), fcn. (2120->12), ass. (0->92)
	t526 = cos(pkin(6));
	t529 = sin(qJ(3));
	t530 = sin(qJ(2));
	t524 = sin(pkin(6));
	t533 = cos(qJ(3));
	t576 = t524 * t533;
	t518 = t526 * t529 + t530 * t576;
	t532 = cos(qJ(4));
	t528 = sin(qJ(4));
	t534 = cos(qJ(2));
	t572 = t528 * t534;
	t502 = t518 * t532 - t524 * t572;
	t585 = qJD(4) - qJD(6);
	t577 = t524 * t529;
	t517 = t526 * t533 - t530 * t577;
	t567 = qJD(2) * t534;
	t559 = t524 * t567;
	t500 = t517 * qJD(3) + t533 * t559;
	t568 = qJD(2) * t530;
	t560 = t524 * t568;
	t479 = t502 * qJD(4) + t500 * t528 - t532 * t560;
	t570 = t532 * t534;
	t501 = t518 * t528 + t524 * t570;
	t480 = -t501 * qJD(4) + t500 * t532 + t528 * t560;
	t527 = sin(qJ(6));
	t531 = cos(qJ(6));
	t584 = -t479 * t531 + t480 * t527 + (t501 * t527 + t502 * t531) * qJD(6);
	t583 = t479 * t527 + t480 * t531 + (t501 * t531 - t502 * t527) * qJD(6);
	t525 = cos(pkin(11));
	t523 = sin(pkin(11));
	t575 = t526 * t530;
	t562 = t523 * t575;
	t516 = t525 * t534 - t562;
	t497 = -t516 * t529 + t523 * t576;
	t574 = t526 * t534;
	t515 = t523 * t574 + t525 * t530;
	t511 = t515 * qJD(2);
	t486 = t497 * qJD(3) - t511 * t533;
	t498 = t516 * t533 + t523 * t577;
	t490 = t498 * t532 + t515 * t528;
	t512 = -qJD(2) * t562 + t525 * t567;
	t473 = t490 * qJD(4) + t486 * t528 - t512 * t532;
	t489 = t498 * t528 - t515 * t532;
	t474 = -t489 * qJD(4) + t486 * t532 + t512 * t528;
	t582 = -t473 * t531 + t474 * t527 + (t489 * t527 + t490 * t531) * qJD(6);
	t581 = t473 * t527 + t474 * t531 + (t489 * t531 - t490 * t527) * qJD(6);
	t514 = t523 * t534 + t525 * t575;
	t495 = -t514 * t529 - t525 * t576;
	t540 = -t523 * t530 + t525 * t574;
	t509 = t540 * qJD(2);
	t484 = t495 * qJD(3) + t509 * t533;
	t541 = -t514 * t533 + t525 * t577;
	t488 = -t528 * t540 - t532 * t541;
	t510 = t514 * qJD(2);
	t471 = t488 * qJD(4) + t484 * t528 - t510 * t532;
	t487 = -t528 * t541 + t532 * t540;
	t472 = -t487 * qJD(4) + t484 * t532 + t510 * t528;
	t580 = -t471 * t531 + t472 * t527 + (t487 * t527 + t488 * t531) * qJD(6);
	t579 = t471 * t527 + t472 * t531 + (t487 * t531 - t488 * t527) * qJD(6);
	t573 = t528 * t533;
	t571 = t532 * t533;
	t569 = t533 * t534;
	t566 = qJD(3) * t529;
	t565 = qJD(3) * t533;
	t564 = qJD(3) * t534;
	t563 = qJD(4) * t533;
	t558 = -qJD(2) + t563;
	t557 = -t540 * t563 + t509;
	t556 = t515 * t563 - t511;
	t543 = t527 * t532 - t528 * t531;
	t542 = t527 * t528 + t531 * t532;
	t539 = qJD(4) * t514 - t510 * t533 - t540 * t566;
	t538 = qJD(4) * t516 - t512 * t533 + t515 * t566;
	t537 = -t529 * t564 + (-qJD(2) * t533 + qJD(4)) * t530;
	t536 = t585 * t543;
	t535 = t585 * t542;
	t506 = (t528 * t530 + t532 * t569) * t524;
	t505 = (t528 * t569 - t530 * t532) * t524;
	t499 = -t518 * qJD(3) - t529 * t559;
	t494 = -t515 * t571 + t516 * t528;
	t493 = -t515 * t573 - t516 * t532;
	t492 = t514 * t528 + t540 * t571;
	t491 = -t514 * t532 + t540 * t573;
	t485 = -t498 * qJD(3) + t511 * t529;
	t483 = t541 * qJD(3) - t509 * t529;
	t482 = (t537 * t532 - t558 * t572) * t524;
	t481 = (t537 * t528 + t558 * t570) * t524;
	t478 = t556 * t528 + t538 * t532;
	t477 = t538 * t528 - t556 * t532;
	t476 = t557 * t528 + t539 * t532;
	t475 = t539 * t528 - t557 * t532;
	t1 = [0, t477 * t527 + t478 * t531 + (t493 * t531 - t494 * t527) * qJD(6), t542 * t485 + t536 * t497, t582, 0, -t582; 0, t475 * t527 + t476 * t531 + (t491 * t531 - t492 * t527) * qJD(6), t542 * t483 + t536 * t495, t580, 0, -t580; 0, t481 * t527 + t482 * t531 + (t505 * t531 - t506 * t527) * qJD(6), t542 * t499 + t536 * t517, t584, 0, -t584; 0, t477 * t531 - t478 * t527 + (-t493 * t527 - t494 * t531) * qJD(6), -t543 * t485 + t535 * t497, t581, 0, -t581; 0, t475 * t531 - t476 * t527 + (-t491 * t527 - t492 * t531) * qJD(6), -t543 * t483 + t535 * t495, t579, 0, -t579; 0, t481 * t531 - t482 * t527 + (-t505 * t527 - t506 * t531) * qJD(6), -t543 * t499 + t535 * t517, t583, 0, -t583; 0, t512 * t529 + t515 * t565, -t486, 0, 0, 0; 0, t510 * t529 - t540 * t565, -t484, 0, 0, 0; 0, (t529 * t568 - t533 * t564) * t524, -t500, 0, 0, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,6);
end