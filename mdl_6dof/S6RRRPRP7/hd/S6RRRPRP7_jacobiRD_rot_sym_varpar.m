% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RRRPRP7
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d5,theta4]';
% 
% Output:
% JRD_rot [9x6]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 11:46
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S6RRRPRP7_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP7_jacobiRD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP7_jacobiRD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRPRP7_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPRP7_jacobiRD_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:45:55
	% EndTime: 2019-10-10 11:45:55
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:45:55
	% EndTime: 2019-10-10 11:45:55
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (3->3), mult. (4->2), div. (0->0), fcn. (4->2), ass. (0->3)
	t31 = qJD(1) * sin(qJ(1));
	t30 = qJD(1) * cos(qJ(1));
	t1 = [-t30, 0, 0, 0, 0, 0; -t31, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; t31, 0, 0, 0, 0, 0; -t30, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiRD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:45:55
	% EndTime: 2019-10-10 11:45:55
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (27->13), mult. (88->22), div. (0->0), fcn. (88->6), ass. (0->21)
	t158 = sin(qJ(2));
	t159 = sin(qJ(1));
	t171 = t158 * t159;
	t161 = cos(qJ(1));
	t170 = t158 * t161;
	t160 = cos(qJ(2));
	t169 = t159 * t160;
	t168 = t160 * t161;
	t156 = sin(pkin(6));
	t167 = qJD(1) * t156;
	t166 = qJD(2) * t156;
	t157 = cos(pkin(6));
	t165 = -t157 * t168 + t171;
	t164 = t157 * t169 + t170;
	t163 = t157 * t170 + t169;
	t162 = t157 * t171 - t168;
	t155 = t162 * qJD(1) + t165 * qJD(2);
	t154 = t164 * qJD(1) + t163 * qJD(2);
	t153 = t163 * qJD(1) + t164 * qJD(2);
	t152 = t165 * qJD(1) + t162 * qJD(2);
	t1 = [t155, t152, 0, 0, 0, 0; -t153, -t154, 0, 0, 0, 0; 0, -t158 * t166, 0, 0, 0, 0; t154, t153, 0, 0, 0, 0; t152, t155, 0, 0, 0, 0; 0, -t160 * t166, 0, 0, 0, 0; -t159 * t167, 0, 0, 0, 0, 0; t161 * t167, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiRD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:45:56
	% EndTime: 2019-10-10 11:45:56
	% DurationCPUTime: 0.18s
	% Computational Cost: add. (94->35), mult. (310->70), div. (0->0), fcn. (322->8), ass. (0->37)
	t284 = cos(pkin(6));
	t287 = sin(qJ(1));
	t286 = sin(qJ(2));
	t307 = t287 * t286;
	t298 = t284 * t307;
	t302 = qJD(2) * t286;
	t289 = cos(qJ(2));
	t290 = cos(qJ(1));
	t304 = t290 * t289;
	t275 = -qJD(1) * t298 - t287 * t302 + (qJD(2) * t284 + qJD(1)) * t304;
	t305 = t290 * t286;
	t306 = t287 * t289;
	t277 = t284 * t305 + t306;
	t285 = sin(qJ(3));
	t288 = cos(qJ(3));
	t283 = sin(pkin(6));
	t303 = qJD(1) * t283;
	t297 = t287 * t303;
	t308 = t283 * t290;
	t311 = (-t277 * t288 + t285 * t308) * qJD(3) - t275 * t285 + t288 * t297;
	t310 = t283 * t285;
	t309 = t283 * t288;
	t301 = qJD(3) * t285;
	t300 = qJD(3) * t288;
	t299 = qJD(3) * t289;
	t296 = t290 * t303;
	t295 = t283 * qJD(2) * t289;
	t276 = t284 * t304 - t307;
	t278 = -t284 * t306 - t305;
	t293 = t298 - t304;
	t291 = -t275 * t288 + t300 * t308 + (qJD(3) * t277 - t297) * t285;
	t274 = t278 * qJD(1) - t277 * qJD(2);
	t273 = -t277 * qJD(1) + t278 * qJD(2);
	t272 = -t276 * qJD(1) + t293 * qJD(2);
	t271 = t285 * t296 + t273 * t288 + (t285 * t293 + t287 * t309) * qJD(3);
	t270 = t288 * t296 - t273 * t285 + (-t287 * t310 + t288 * t293) * qJD(3);
	t1 = [t291, t272 * t288 - t278 * t301, t270, 0, 0, 0; t271, t274 * t288 - t276 * t301, t311, 0, 0, 0; 0, (-t285 * t299 - t288 * t302) * t283, -t285 * t295 + (-t284 * t285 - t286 * t309) * qJD(3), 0, 0, 0; -t311, -t272 * t285 - t278 * t300, -t271, 0, 0, 0; t270, -t274 * t285 - t276 * t300, t291, 0, 0, 0; 0, (t285 * t302 - t288 * t299) * t283, -t288 * t295 + (-t284 * t288 + t286 * t310) * qJD(3), 0, 0, 0; t274, t273, 0, 0, 0, 0; -t272, t275, 0, 0, 0, 0; 0, t295, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:45:56
	% EndTime: 2019-10-10 11:45:56
	% DurationCPUTime: 0.18s
	% Computational Cost: add. (144->36), mult. (310->70), div. (0->0), fcn. (322->8), ass. (0->38)
	t310 = cos(pkin(6));
	t312 = sin(qJ(1));
	t311 = sin(qJ(2));
	t331 = t312 * t311;
	t322 = t310 * t331;
	t326 = qJD(2) * t311;
	t313 = cos(qJ(2));
	t314 = cos(qJ(1));
	t328 = t314 * t313;
	t298 = -qJD(1) * t322 - t312 * t326 + (qJD(2) * t310 + qJD(1)) * t328;
	t329 = t314 * t311;
	t330 = t312 * t313;
	t300 = t310 * t329 + t330;
	t308 = qJ(3) + pkin(11);
	t306 = sin(t308);
	t307 = cos(t308);
	t309 = sin(pkin(6));
	t327 = qJD(1) * t309;
	t321 = t312 * t327;
	t332 = t309 * t314;
	t335 = (-t300 * t307 + t306 * t332) * qJD(3) - t298 * t306 + t307 * t321;
	t334 = t309 * t311;
	t333 = t309 * t312;
	t325 = qJD(3) * t306;
	t324 = qJD(3) * t307;
	t323 = qJD(3) * t313;
	t320 = t314 * t327;
	t319 = t309 * qJD(2) * t313;
	t299 = t310 * t328 - t331;
	t301 = -t310 * t330 - t329;
	t317 = t322 - t328;
	t315 = -t298 * t307 + t324 * t332 + (qJD(3) * t300 - t321) * t306;
	t297 = t301 * qJD(1) - t300 * qJD(2);
	t296 = -t300 * qJD(1) + t301 * qJD(2);
	t295 = -t299 * qJD(1) + t317 * qJD(2);
	t294 = t306 * t320 + t296 * t307 + (t306 * t317 + t307 * t333) * qJD(3);
	t293 = t307 * t320 - t296 * t306 + (-t306 * t333 + t307 * t317) * qJD(3);
	t1 = [t315, t295 * t307 - t301 * t325, t293, 0, 0, 0; t294, t297 * t307 - t299 * t325, t335, 0, 0, 0; 0, (-t306 * t323 - t307 * t326) * t309, -t306 * t319 + (-t306 * t310 - t307 * t334) * qJD(3), 0, 0, 0; -t335, -t295 * t306 - t301 * t324, -t294, 0, 0, 0; t293, -t297 * t306 - t299 * t324, t315, 0, 0, 0; 0, (t306 * t326 - t307 * t323) * t309, -t307 * t319 + (t306 * t334 - t307 * t310) * qJD(3), 0, 0, 0; t297, t296, 0, 0, 0, 0; -t295, t298, 0, 0, 0, 0; 0, t319, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:45:58
	% EndTime: 2019-10-10 11:45:59
	% DurationCPUTime: 0.60s
	% Computational Cost: add. (424->74), mult. (898->140), div. (0->0), fcn. (964->10), ass. (0->67)
	t487 = sin(qJ(1));
	t484 = cos(pkin(6));
	t499 = qJD(2) * t484 + qJD(1);
	t486 = sin(qJ(2));
	t520 = t487 * t486;
	t507 = t484 * t520;
	t515 = qJD(2) * t486;
	t489 = cos(qJ(2));
	t490 = cos(qJ(1));
	t517 = t490 * t489;
	t458 = -qJD(1) * t507 - t487 * t515 + t499 * t517;
	t482 = qJ(3) + pkin(11);
	t480 = sin(t482);
	t481 = cos(t482);
	t518 = t490 * t486;
	t519 = t487 * t489;
	t469 = t484 * t518 + t519;
	t483 = sin(pkin(6));
	t521 = t483 * t490;
	t494 = t469 * t480 + t481 * t521;
	t516 = qJD(1) * t483;
	t504 = t487 * t516;
	t454 = t494 * qJD(3) - t458 * t481 - t480 * t504;
	t470 = t484 * t519 + t518;
	t457 = t470 * qJD(1) + t469 * qJD(2);
	t506 = t480 * t521;
	t463 = -t469 * t481 + t506;
	t505 = t484 * t517;
	t468 = -t505 + t520;
	t485 = sin(qJ(5));
	t488 = cos(qJ(5));
	t533 = t454 * t488 - t457 * t485 + (-t463 * t485 - t468 * t488) * qJD(5);
	t532 = (t463 * t488 - t468 * t485) * qJD(5) + t454 * t485 + t457 * t488;
	t511 = qJD(3) * t489;
	t529 = (qJD(2) * t481 - qJD(5)) * t486 + t480 * t511;
	t524 = t483 * t486;
	t523 = t483 * t487;
	t522 = t483 * t489;
	t514 = qJD(2) * t489;
	t513 = qJD(3) * t480;
	t512 = qJD(3) * t481;
	t510 = qJD(5) * t481;
	t509 = qJD(5) * t485;
	t508 = qJD(5) * t488;
	t503 = t490 * t516;
	t502 = t483 * t515;
	t501 = t483 * t514;
	t456 = -t469 * qJD(1) - t470 * qJD(2);
	t497 = t470 * t510 + t456;
	t496 = t468 * t510 + t458;
	t495 = (qJD(2) - t510) * t489;
	t471 = -t507 + t517;
	t464 = -t471 * t480 + t481 * t523;
	t465 = t471 * t481 + t480 * t523;
	t467 = t484 * t480 + t481 * t524;
	t466 = -t480 * t524 + t484 * t481;
	t452 = qJD(3) * t506 - t458 * t480 - t469 * t512 + t481 * t504;
	t455 = -qJD(1) * t505 - t490 * t514 + t499 * t520;
	t492 = qJD(5) * t471 + t455 * t481 + t470 * t513;
	t491 = qJD(5) * t469 - t457 * t481 + t468 * t513;
	t460 = t466 * qJD(3) + t481 * t501;
	t459 = -t467 * qJD(3) - t480 * t501;
	t451 = t464 * qJD(3) + t456 * t481 + t480 * t503;
	t450 = t465 * qJD(3) + t456 * t480 - t481 * t503;
	t449 = t451 * t488 - t455 * t485 + (-t465 * t485 + t470 * t488) * qJD(5);
	t448 = -t451 * t485 - t455 * t488 + (-t465 * t488 - t470 * t485) * qJD(5);
	t1 = [t533, t497 * t485 + t492 * t488, -t450 * t488 - t464 * t509, 0, t448, 0; t449, t496 * t485 + t491 * t488, t452 * t488 + t494 * t509, 0, t532, 0; 0, (t485 * t495 - t529 * t488) * t483, t459 * t488 - t466 * t509, 0, t488 * t502 - t460 * t485 + (-t467 * t488 + t485 * t522) * qJD(5), 0; -t532, -t492 * t485 + t497 * t488, t450 * t485 - t464 * t508, 0, -t449, 0; t448, -t491 * t485 + t496 * t488, -t452 * t485 + t494 * t508, 0, t533, 0; 0, (t529 * t485 + t488 * t495) * t483, -t459 * t485 - t466 * t508, 0, -t485 * t502 - t460 * t488 + (t467 * t485 + t488 * t522) * qJD(5), 0; t452, t455 * t480 - t470 * t512, t451, 0, 0, 0; t450, -t457 * t480 - t468 * t512, -t454, 0, 0, 0; 0, (-t480 * t515 + t481 * t511) * t483, t460, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiRD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:46:01
	% EndTime: 2019-10-10 11:46:02
	% DurationCPUTime: 0.50s
	% Computational Cost: add. (424->74), mult. (898->140), div. (0->0), fcn. (964->10), ass. (0->68)
	t584 = sin(qJ(1));
	t581 = cos(pkin(6));
	t596 = qJD(2) * t581 + qJD(1);
	t583 = sin(qJ(2));
	t617 = t584 * t583;
	t603 = t581 * t617;
	t611 = qJD(2) * t583;
	t586 = cos(qJ(2));
	t587 = cos(qJ(1));
	t613 = t587 * t586;
	t555 = -qJD(1) * t603 - t584 * t611 + t596 * t613;
	t579 = qJ(3) + pkin(11);
	t577 = sin(t579);
	t578 = cos(t579);
	t614 = t587 * t583;
	t616 = t584 * t586;
	t566 = t581 * t614 + t616;
	t580 = sin(pkin(6));
	t619 = t580 * t587;
	t592 = t566 * t577 + t578 * t619;
	t612 = qJD(1) * t580;
	t600 = t584 * t612;
	t551 = t592 * qJD(3) - t555 * t578 - t577 * t600;
	t567 = t581 * t616 + t614;
	t554 = t567 * qJD(1) + t566 * qJD(2);
	t602 = t577 * t619;
	t560 = -t566 * t578 + t602;
	t601 = t581 * t613;
	t565 = -t601 + t617;
	t582 = sin(qJ(5));
	t585 = cos(qJ(5));
	t629 = t551 * t582 + t554 * t585 + (t560 * t585 - t565 * t582) * qJD(5);
	t628 = (t560 * t582 + t565 * t585) * qJD(5) - t551 * t585 + t554 * t582;
	t621 = t580 * t583;
	t620 = t580 * t584;
	t618 = t582 * t586;
	t615 = t585 * t586;
	t610 = qJD(2) * t586;
	t609 = qJD(3) * t577;
	t608 = qJD(3) * t578;
	t607 = qJD(3) * t586;
	t606 = qJD(5) * t578;
	t605 = qJD(5) * t582;
	t604 = qJD(5) * t585;
	t599 = t587 * t612;
	t598 = t580 * t611;
	t597 = t580 * t610;
	t595 = -qJD(2) + t606;
	t553 = -t566 * qJD(1) - t567 * qJD(2);
	t594 = t567 * t606 + t553;
	t593 = t565 * t606 + t555;
	t568 = -t603 + t613;
	t561 = -t568 * t577 + t578 * t620;
	t562 = t568 * t578 + t577 * t620;
	t564 = t581 * t577 + t578 * t621;
	t563 = -t577 * t621 + t581 * t578;
	t549 = qJD(3) * t602 - t555 * t577 - t566 * t608 + t578 * t600;
	t552 = -qJD(1) * t601 - t587 * t610 + t596 * t617;
	t590 = qJD(5) * t568 + t552 * t578 + t567 * t609;
	t589 = qJD(5) * t566 - t554 * t578 + t565 * t609;
	t588 = -t577 * t607 + (-qJD(2) * t578 + qJD(5)) * t583;
	t557 = t563 * qJD(3) + t578 * t597;
	t556 = -t564 * qJD(3) - t577 * t597;
	t548 = t561 * qJD(3) + t553 * t578 + t577 * t599;
	t547 = t562 * qJD(3) + t553 * t577 - t578 * t599;
	t546 = t548 * t585 - t552 * t582 + (-t562 * t582 + t567 * t585) * qJD(5);
	t545 = t548 * t582 + t552 * t585 + (t562 * t585 + t567 * t582) * qJD(5);
	t1 = [-t628, t594 * t582 + t590 * t585, -t547 * t585 - t561 * t605, 0, -t545, 0; t546, t593 * t582 + t589 * t585, t549 * t585 + t592 * t605, 0, t629, 0; 0, (t588 * t585 - t595 * t618) * t580, t556 * t585 - t563 * t605, 0, t585 * t598 - t557 * t582 + (-t564 * t585 + t580 * t618) * qJD(5), 0; t549, t552 * t577 - t567 * t608, t548, 0, 0, 0; t547, -t554 * t577 - t565 * t608, -t551, 0, 0, 0; 0, (-t577 * t611 + t578 * t607) * t580, t557, 0, 0, 0; t629, t590 * t582 - t594 * t585, -t547 * t582 + t561 * t604, 0, t546, 0; t545, t589 * t582 - t593 * t585, t549 * t582 - t592 * t604, 0, t628, 0; 0, (t588 * t582 + t595 * t615) * t580, t556 * t582 + t563 * t604, 0, t582 * t598 + t557 * t585 + (-t564 * t582 - t580 * t615) * qJD(5), 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,6);
end