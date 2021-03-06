% Zeitableitung der analytischen Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S6RRRPRR12
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% (Ist für translatorischen Teil egal, kennzeichnet nur den Rechenweg der Herleitung)
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt (0=Basis).
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d5,d6,theta4]';
% 
% Output:
% JaD_transl [3x6]
%   Translatorischer Teil der analytischen Jacobi-Matrix (Zeitableitung)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 12:12
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_transl = S6RRRPRR12_jacobiaD_transl_sym_varpar(qJ, qJD, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR12_jacobiaD_transl_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRR12_jacobiaD_transl_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RRRPRR12_jacobiaD_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRPRR12_jacobiaD_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRPRR12_jacobiaD_transl_sym_varpar: pkin has to be [12x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:12:18
	% EndTime: 2019-10-10 12:12:18
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:12:18
	% EndTime: 2019-10-10 12:12:18
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (2->2), mult. (8->6), div. (0->0), fcn. (4->2), ass. (0->3)
	t27 = cos(qJ(1));
	t26 = sin(qJ(1));
	t1 = [(-r_i_i_C(1) * t27 + r_i_i_C(2) * t26) * qJD(1), 0, 0, 0, 0, 0; (-r_i_i_C(1) * t26 - r_i_i_C(2) * t27) * qJD(1), 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:12:19
	% EndTime: 2019-10-10 12:12:19
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (35->18), mult. (110->35), div. (0->0), fcn. (94->6), ass. (0->20)
	t136 = sin(pkin(6));
	t151 = t136 * (pkin(8) + r_i_i_C(3));
	t138 = sin(qJ(2));
	t139 = sin(qJ(1));
	t149 = t138 * t139;
	t141 = cos(qJ(1));
	t148 = t138 * t141;
	t140 = cos(qJ(2));
	t147 = t139 * t140;
	t146 = t140 * t141;
	t137 = cos(pkin(6));
	t145 = -t137 * t146 + t149;
	t144 = t137 * t147 + t148;
	t143 = t137 * t148 + t147;
	t142 = t137 * t149 - t146;
	t135 = t142 * qJD(1) + t145 * qJD(2);
	t134 = t144 * qJD(1) + t143 * qJD(2);
	t133 = t143 * qJD(1) + t144 * qJD(2);
	t132 = t145 * qJD(1) + t142 * qJD(2);
	t1 = [t135 * r_i_i_C(1) + t134 * r_i_i_C(2) + (-pkin(1) * t141 - t139 * t151) * qJD(1), t132 * r_i_i_C(1) + t133 * r_i_i_C(2), 0, 0, 0, 0; -t133 * r_i_i_C(1) + t132 * r_i_i_C(2) + (-pkin(1) * t139 + t141 * t151) * qJD(1), -t134 * r_i_i_C(1) + t135 * r_i_i_C(2), 0, 0, 0, 0; 0, (-r_i_i_C(1) * t138 - r_i_i_C(2) * t140) * t136 * qJD(2), 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:12:20
	% EndTime: 2019-10-10 12:12:20
	% DurationCPUTime: 0.23s
	% Computational Cost: add. (145->51), mult. (441->91), div. (0->0), fcn. (412->8), ass. (0->38)
	t242 = cos(pkin(6));
	t244 = sin(qJ(2));
	t245 = sin(qJ(1));
	t264 = t245 * t244;
	t258 = t242 * t264;
	t247 = cos(qJ(2));
	t248 = cos(qJ(1));
	t261 = t248 * t247;
	t233 = -qJD(1) * t258 - qJD(2) * t264 + (qJD(2) * t242 + qJD(1)) * t261;
	t241 = sin(pkin(6));
	t265 = t241 * t248;
	t256 = qJD(3) * t265;
	t269 = t233 - t256;
	t268 = -r_i_i_C(3) - pkin(9);
	t267 = t241 * t245;
	t246 = cos(qJ(3));
	t266 = t241 * t246;
	t263 = t245 * t247;
	t262 = t248 * t244;
	t260 = qJD(1) * t241;
	t235 = t242 * t262 + t263;
	t259 = qJD(3) * t235;
	t257 = t248 * t260;
	t243 = sin(qJ(3));
	t255 = -r_i_i_C(1) * t243 - r_i_i_C(2) * t246;
	t254 = t246 * r_i_i_C(1) - t243 * r_i_i_C(2) + pkin(2);
	t253 = t242 * t261 - t264;
	t252 = t242 * t263 + t262;
	t251 = t258 - t261;
	t250 = qJD(3) * t255;
	t249 = t245 * t260 - t259;
	t238 = t246 * t256;
	t232 = t252 * qJD(1) + t235 * qJD(2);
	t231 = t235 * qJD(1) + t252 * qJD(2);
	t230 = -t253 * qJD(1) + t251 * qJD(2);
	t229 = t243 * t257 - t231 * t246 + (t243 * t251 + t245 * t266) * qJD(3);
	t228 = t246 * t257 + t231 * t243 + (-t243 * t267 + t246 * t251) * qJD(3);
	t1 = [(-t233 * t246 + t243 * t259 + t238) * r_i_i_C(1) + (t269 * t243 + t246 * t259) * r_i_i_C(2) - t233 * pkin(2) + t268 * t232 + (-t248 * pkin(1) + (-pkin(8) + t255) * t267) * qJD(1), t254 * t230 + t268 * t231 - t252 * t250, t228 * r_i_i_C(1) - t229 * r_i_i_C(2), 0, 0, 0; -t231 * pkin(2) + t229 * r_i_i_C(1) + t228 * r_i_i_C(2) + t268 * t230 + (-pkin(1) * t245 + pkin(8) * t265) * qJD(1), -t254 * t232 - t268 * t233 + t253 * t250, t238 * r_i_i_C(2) + (t249 * r_i_i_C(1) - t233 * r_i_i_C(2)) * t246 + (-t269 * r_i_i_C(1) - t249 * r_i_i_C(2)) * t243, 0, 0, 0; 0, (t247 * t250 + (-t254 * t244 - t268 * t247) * qJD(2)) * t241, t255 * t247 * t241 * qJD(2) + ((-t242 * t243 - t244 * t266) * r_i_i_C(1) + (t241 * t243 * t244 - t242 * t246) * r_i_i_C(2)) * qJD(3), 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:12:21
	% EndTime: 2019-10-10 12:12:21
	% DurationCPUTime: 0.42s
	% Computational Cost: add. (344->68), mult. (1036->114), div. (0->0), fcn. (1016->10), ass. (0->47)
	t325 = cos(pkin(6));
	t341 = qJD(2) * t325 + qJD(1);
	t327 = sin(qJ(2));
	t328 = sin(qJ(1));
	t355 = t328 * t327;
	t348 = t325 * t355;
	t330 = cos(qJ(2));
	t331 = cos(qJ(1));
	t352 = t331 * t330;
	t307 = -qJD(1) * t348 - qJD(2) * t355 + t341 * t352;
	t323 = sin(pkin(6));
	t356 = t323 * t331;
	t363 = -qJD(3) * t356 + t307;
	t353 = t331 * t327;
	t354 = t328 * t330;
	t311 = t325 * t353 + t354;
	t351 = qJD(1) * t323;
	t362 = -qJD(3) * t311 + t328 * t351;
	t326 = sin(qJ(3));
	t329 = cos(qJ(3));
	t361 = t362 * t326 + t363 * t329;
	t322 = sin(pkin(12));
	t324 = cos(pkin(12));
	t340 = t324 * r_i_i_C(1) - t322 * r_i_i_C(2) + pkin(3);
	t359 = r_i_i_C(3) + qJ(4);
	t360 = t359 * t326 + t340 * t329 + pkin(2);
	t358 = t323 * t328;
	t357 = t323 * t329;
	t350 = qJD(2) * t330;
	t347 = t325 * t352;
	t345 = t331 * t351;
	t344 = t323 * t350;
	t339 = t322 * r_i_i_C(1) + t324 * r_i_i_C(2) + pkin(9);
	t313 = -t348 + t352;
	t338 = -t313 * t326 + t328 * t357;
	t337 = t313 * t329 + t326 * t358;
	t336 = t325 * t326 + t327 * t357;
	t335 = t325 * t354 + t353;
	t300 = t363 * t326 - t362 * t329;
	t332 = t326 * qJD(4) + (-t340 * t326 + t359 * t329) * qJD(3);
	t308 = t336 * qJD(3) + t326 * t344;
	t306 = t335 * qJD(1) + t311 * qJD(2);
	t305 = t311 * qJD(1) + t335 * qJD(2);
	t304 = -qJD(1) * t347 - t331 * t350 + t341 * t355;
	t299 = t338 * qJD(3) - t305 * t329 + t326 * t345;
	t298 = t337 * qJD(3) - t305 * t326 - t329 * t345;
	t1 = [(-t306 * t322 - t324 * t361) * r_i_i_C(1) + (-t306 * t324 + t322 * t361) * r_i_i_C(2) - t361 * pkin(3) - (t311 * t326 + t329 * t356) * qJD(4) - t307 * pkin(2) - t306 * pkin(9) - t359 * t300 + (-t331 * pkin(1) - pkin(8) * t358) * qJD(1), t360 * t304 - t339 * t305 - t332 * t335, t337 * qJD(4) - t340 * t298 + t359 * t299, t298, 0, 0; (t299 * t324 - t304 * t322) * r_i_i_C(1) + (-t299 * t322 - t304 * t324) * r_i_i_C(2) + t299 * pkin(3) - t338 * qJD(4) - t305 * pkin(2) - t304 * pkin(9) + t359 * t298 + (-t328 * pkin(1) + pkin(8) * t356) * qJD(1), t339 * t307 + t332 * (t347 - t355) - t360 * t306, -(-t311 * t329 + t326 * t356) * qJD(4) + t359 * t361 - t340 * t300, t300, 0, 0; 0, (t332 * t330 + (-t327 * t360 + t339 * t330) * qJD(2)) * t323, t336 * qJD(4) + t359 * (t329 * t344 + (-t323 * t326 * t327 + t325 * t329) * qJD(3)) - t340 * t308, t308, 0, 0;];
	JaD_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:12:21
	% EndTime: 2019-10-10 12:12:22
	% DurationCPUTime: 0.69s
	% Computational Cost: add. (600->95), mult. (1491->158), div. (0->0), fcn. (1502->12), ass. (0->66)
	t386 = sin(qJ(1));
	t382 = cos(pkin(6));
	t401 = qJD(2) * t382 + qJD(1);
	t385 = sin(qJ(2));
	t419 = t386 * t385;
	t410 = t382 * t419;
	t414 = qJD(2) * t385;
	t388 = cos(qJ(2));
	t389 = cos(qJ(1));
	t416 = t389 * t388;
	t352 = -qJD(1) * t410 - t386 * t414 + t401 * t416;
	t381 = sin(pkin(6));
	t420 = t381 * t389;
	t433 = -qJD(3) * t420 + t352;
	t417 = t389 * t385;
	t418 = t386 * t388;
	t363 = t382 * t417 + t418;
	t415 = qJD(1) * t381;
	t432 = -qJD(3) * t363 + t386 * t415;
	t384 = sin(qJ(3));
	t387 = cos(qJ(3));
	t356 = t363 * t387 - t384 * t420;
	t409 = t382 * t416;
	t362 = -t409 + t419;
	t379 = pkin(12) + qJ(5);
	t377 = sin(t379);
	t378 = cos(t379);
	t431 = t356 * t377 - t362 * t378;
	t430 = t356 * t378 + t362 * t377;
	t399 = t377 * r_i_i_C(1) + t378 * r_i_i_C(2);
	t395 = qJD(5) * t399;
	t376 = cos(pkin(12)) * pkin(4) + pkin(3);
	t400 = t378 * r_i_i_C(1) - t377 * r_i_i_C(2);
	t398 = t376 + t400;
	t426 = r_i_i_C(3) + pkin(10) + qJ(4);
	t390 = (t398 * t384 - t426 * t387) * qJD(3) - t384 * qJD(4) + t387 * t395;
	t346 = t432 * t384 + t433 * t387;
	t427 = t426 * t384 + t398 * t387 + pkin(2);
	t423 = t381 * t386;
	t422 = t381 * t387;
	t421 = t381 * t388;
	t413 = qJD(2) * t388;
	t408 = -sin(pkin(12)) * pkin(4) - pkin(9);
	t406 = t389 * t415;
	t405 = t381 * t414;
	t404 = t381 * t413;
	t397 = t363 * t384 + t387 * t420;
	t365 = -t410 + t416;
	t358 = -t365 * t384 + t386 * t422;
	t359 = t365 * t387 + t384 * t423;
	t361 = t382 * t384 + t385 * t422;
	t396 = -t381 * t385 * t384 + t382 * t387;
	t364 = t382 * t418 + t417;
	t394 = t400 * qJD(5);
	t392 = t399 - t408;
	t345 = t433 * t384 - t432 * t387;
	t354 = t396 * qJD(3) + t387 * t404;
	t353 = t361 * qJD(3) + t384 * t404;
	t351 = t364 * qJD(1) + t363 * qJD(2);
	t350 = t363 * qJD(1) + t364 * qJD(2);
	t349 = -qJD(1) * t409 - t389 * t413 + t401 * t419;
	t344 = t358 * qJD(3) - t350 * t387 + t384 * t406;
	t343 = t359 * qJD(3) - t350 * t384 - t387 * t406;
	t342 = t344 * t378 - t349 * t377 + (-t359 * t377 + t364 * t378) * qJD(5);
	t341 = -t344 * t377 - t349 * t378 + (-t359 * t378 - t364 * t377) * qJD(5);
	t1 = [-t397 * qJD(4) - t352 * pkin(2) - t398 * t346 - t392 * t351 - t426 * t345 + (t431 * r_i_i_C(1) + t430 * r_i_i_C(2)) * qJD(5) + (-t389 * pkin(1) - pkin(8) * t423) * qJD(1), t427 * t349 - t392 * t350 + t390 * t364 + t365 * t394, t359 * qJD(4) - t398 * t343 + t426 * t344 - t358 * t395, t343, t341 * r_i_i_C(1) - t342 * r_i_i_C(2), 0; -t350 * pkin(2) + t342 * r_i_i_C(1) + t341 * r_i_i_C(2) - t358 * qJD(4) + t344 * t376 + t408 * t349 + t426 * t343 + (-pkin(1) * t386 + pkin(8) * t420) * qJD(1), -t351 * t427 + t392 * t352 + t390 * t362 + t363 * t394, t356 * qJD(4) - t398 * t345 + t426 * t346 + t397 * t395, t345, (-t346 * t377 + t351 * t378) * r_i_i_C(1) + (-t346 * t378 - t351 * t377) * r_i_i_C(2) + (-t430 * r_i_i_C(1) + t431 * r_i_i_C(2)) * qJD(5), 0; 0, ((-qJD(2) * t427 + t394) * t385 + (t392 * qJD(2) - t390) * t388) * t381, t361 * qJD(4) - t398 * t353 + t426 * t354 - t396 * t395, t353, (-t354 * t377 + t378 * t405) * r_i_i_C(1) + (-t354 * t378 - t377 * t405) * r_i_i_C(2) + ((-t361 * t378 + t377 * t421) * r_i_i_C(1) + (t361 * t377 + t378 * t421) * r_i_i_C(2)) * qJD(5), 0;];
	JaD_transl = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiaD_transl_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:12:21
	% EndTime: 2019-10-10 12:12:22
	% DurationCPUTime: 0.90s
	% Computational Cost: add. (996->114), mult. (1956->179), div. (0->0), fcn. (1978->14), ass. (0->76)
	t419 = sin(qJ(3));
	t422 = cos(qJ(3));
	t416 = pkin(12) + qJ(5);
	t413 = cos(t416);
	t398 = pkin(5) * t413 + cos(pkin(12)) * pkin(4) + pkin(3);
	t414 = qJ(6) + t416;
	t410 = sin(t414);
	t411 = cos(t414);
	t437 = t411 * r_i_i_C(1) - t410 * r_i_i_C(2);
	t433 = t398 + t437;
	t467 = r_i_i_C(3) + pkin(11) + pkin(10) + qJ(4);
	t412 = sin(t416);
	t417 = qJD(5) + qJD(6);
	t436 = t410 * r_i_i_C(1) + t411 * r_i_i_C(2);
	t466 = pkin(5) * qJD(5);
	t472 = t412 * t466 + t436 * t417;
	t424 = t472 * t422 + (t433 * t419 - t467 * t422) * qJD(3) - t419 * qJD(4);
	t421 = sin(qJ(1));
	t423 = cos(qJ(2));
	t465 = cos(pkin(6));
	t469 = cos(qJ(1));
	t438 = t465 * t469;
	t420 = sin(qJ(2));
	t447 = t421 * t465;
	t439 = t420 * t447;
	t448 = t469 * qJD(1);
	t457 = qJD(2) * t420;
	t384 = -qJD(1) * t439 - t421 * t457 + (qJD(2) * t438 + t448) * t423;
	t418 = sin(pkin(6));
	t453 = t418 * t469;
	t475 = -qJD(3) * t453 + t384;
	t395 = t420 * t438 + t421 * t423;
	t464 = t418 * t421;
	t474 = qJD(1) * t464 - qJD(3) * t395;
	t378 = t474 * t419 + t475 * t422;
	t470 = t467 * t419 + t433 * t422 + pkin(2);
	t468 = -pkin(9) - pkin(5) * t412 - sin(pkin(12)) * pkin(4);
	t463 = t418 * t422;
	t462 = t418 * t423;
	t461 = t421 * t420;
	t434 = t423 * t438;
	t452 = t469 * t423;
	t381 = -qJD(1) * t434 - qJD(2) * t452 + (qJD(2) * t465 + qJD(1)) * t461;
	t397 = t452 - t439;
	t391 = t397 * t422 + t419 * t464;
	t444 = -t391 * t417 - t381;
	t396 = t469 * t420 + t423 * t447;
	t382 = t395 * qJD(1) + t396 * qJD(2);
	t390 = -t397 * t419 + t421 * t463;
	t440 = t418 * t448;
	t376 = t390 * qJD(3) - t382 * t422 + t419 * t440;
	t446 = t396 * t417 + t376;
	t371 = -t446 * t410 + t444 * t411;
	t372 = t444 * t410 + t446 * t411;
	t460 = t371 * r_i_i_C(1) - t372 * r_i_i_C(2);
	t383 = t396 * qJD(1) + t395 * qJD(2);
	t388 = t395 * t422 - t419 * t453;
	t443 = t388 * t417 - t383;
	t394 = -t434 + t461;
	t445 = -t394 * t417 - t378;
	t459 = (t445 * t410 - t443 * t411) * r_i_i_C(1) + (t443 * t410 + t445 * t411) * r_i_i_C(2);
	t393 = t465 * t419 + t420 * t463;
	t450 = t418 * t457;
	t432 = -t393 * t417 + t450;
	t428 = -t418 * t420 * t419 + t465 * t422;
	t449 = qJD(2) * t462;
	t386 = t428 * qJD(3) + t422 * t449;
	t435 = t417 * t462 - t386;
	t458 = (t435 * t410 + t432 * t411) * r_i_i_C(1) + (-t432 * t410 + t435 * t411) * r_i_i_C(2);
	t431 = t436 - t468;
	t429 = t395 * t419 + t422 * t453;
	t377 = t475 * t419 - t474 * t422;
	t426 = t413 * t466 + t437 * t417;
	t385 = t393 * qJD(3) + t419 * t449;
	t375 = t391 * qJD(3) - t382 * t419 - t422 * t440;
	t1 = [-t429 * qJD(4) - t384 * pkin(2) - t433 * t378 + ((t388 * t410 - t394 * t411) * r_i_i_C(1) + (t388 * t411 + t394 * t410) * r_i_i_C(2)) * t417 - t431 * t383 - t467 * t377 + (-t469 * pkin(1) - pkin(8) * t464) * qJD(1) + (t388 * t412 - t394 * t413) * t466, t470 * t381 - t431 * t382 + t424 * t396 + t426 * t397, t391 * qJD(4) - t433 * t375 + t467 * t376 - t390 * t472, t375, (-t376 * t412 - t381 * t413 + (-t391 * t413 - t396 * t412) * qJD(5)) * pkin(5) + t460, t460; -t382 * pkin(2) + t372 * r_i_i_C(1) + t371 * r_i_i_C(2) - t390 * qJD(4) + t376 * t398 + t468 * t381 + t467 * t375 + (-pkin(1) * t421 + pkin(8) * t453) * qJD(1) + (-t391 * t412 + t396 * t413) * t466, -t383 * t470 + t431 * t384 + t424 * t394 + t426 * t395, t388 * qJD(4) - t433 * t377 + t467 * t378 + t429 * t472, t377, (-t378 * t412 + t383 * t413 + (-t388 * t413 - t394 * t412) * qJD(5)) * pkin(5) + t459, t459; 0, ((-qJD(2) * t470 + t426) * t420 + (t431 * qJD(2) - t424) * t423) * t418, t393 * qJD(4) - t433 * t385 + t467 * t386 - t428 * t472, t385, (t413 * t450 - t386 * t412 + (-t393 * t413 + t412 * t462) * qJD(5)) * pkin(5) + t458, t458;];
	JaD_transl = t1;
else
	JaD_transl=NaN(3,6);
end