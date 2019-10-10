% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6PPRRRP2
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d3,d4,d5,theta1,theta2]';
% 
% Output:
% JRD_rot [9x6]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-09 21:16
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S6PPRRRP2_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PPRRRP2_jacobiRD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PPRRRP2_jacobiRD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6PPRRRP2_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PPRRRP2_jacobiRD_rot_sym_varpar: pkin has to be [12x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:16:21
	% EndTime: 2019-10-09 21:16:21
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:16:21
	% EndTime: 2019-10-09 21:16:21
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiRD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:16:21
	% EndTime: 2019-10-09 21:16:21
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiRD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:16:21
	% EndTime: 2019-10-09 21:16:21
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (20->14), mult. (80->39), div. (0->0), fcn. (88->10), ass. (0->20)
	t132 = sin(pkin(11));
	t138 = cos(pkin(6));
	t147 = t132 * t138;
	t133 = sin(pkin(7));
	t134 = sin(pkin(6));
	t146 = t133 * t134;
	t145 = t133 * t138;
	t135 = cos(pkin(12));
	t137 = cos(pkin(7));
	t144 = t135 * t137;
	t136 = cos(pkin(11));
	t143 = t136 * t138;
	t131 = sin(pkin(12));
	t142 = -(-t132 * t131 + t135 * t143) * t137 + t136 * t146;
	t141 = -(-t136 * t131 - t135 * t147) * t137 - t132 * t146;
	t140 = cos(qJ(3));
	t139 = sin(qJ(3));
	t130 = -t131 * t147 + t136 * t135;
	t128 = t131 * t143 + t132 * t135;
	t1 = [0, 0, (-t130 * t140 + t141 * t139) * qJD(3), 0, 0, 0; 0, 0, (-t128 * t140 + t142 * t139) * qJD(3), 0, 0, 0; 0, 0, (-t139 * t145 + (-t131 * t140 - t139 * t144) * t134) * qJD(3), 0, 0, 0; 0, 0, (t130 * t139 + t141 * t140) * qJD(3), 0, 0, 0; 0, 0, (t128 * t139 + t142 * t140) * qJD(3), 0, 0, 0; 0, 0, (-t140 * t145 + (t131 * t139 - t140 * t144) * t134) * qJD(3), 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:16:23
	% EndTime: 2019-10-09 21:16:23
	% DurationCPUTime: 0.29s
	% Computational Cost: add. (118->35), mult. (402->84), div. (0->0), fcn. (472->12), ass. (0->42)
	t336 = sin(pkin(12));
	t339 = sin(pkin(6));
	t345 = sin(qJ(3));
	t347 = cos(qJ(3));
	t340 = cos(pkin(12));
	t342 = cos(pkin(7));
	t355 = t340 * t342;
	t338 = sin(pkin(7));
	t343 = cos(pkin(6));
	t357 = t338 * t343;
	t328 = (t336 * t347 + t345 * t355) * t339 + t345 * t357;
	t341 = cos(pkin(11));
	t337 = sin(pkin(11));
	t359 = t337 * t343;
	t335 = -t336 * t359 + t341 * t340;
	t334 = -t341 * t336 - t340 * t359;
	t358 = t338 * t339;
	t349 = t334 * t342 + t337 * t358;
	t324 = t335 * t347 + t349 * t345;
	t354 = t341 * t343;
	t333 = t336 * t354 + t337 * t340;
	t332 = -t337 * t336 + t340 * t354;
	t350 = -t332 * t342 + t341 * t358;
	t362 = -t333 * t347 + t350 * t345;
	t356 = t339 * t342;
	t344 = sin(qJ(4));
	t353 = qJD(4) * t344;
	t346 = cos(qJ(4));
	t352 = qJD(4) * t346;
	t321 = -t333 * t345 - t350 * t347;
	t323 = -t335 * t345 + t349 * t347;
	t327 = t347 * t357 + (-t336 * t345 + t347 * t355) * t339;
	t331 = -t340 * t358 + t343 * t342;
	t330 = -t334 * t338 + t337 * t356;
	t329 = -t332 * t338 - t341 * t356;
	t326 = t328 * qJD(3);
	t325 = t327 * qJD(3);
	t320 = t324 * qJD(3);
	t319 = t323 * qJD(3);
	t318 = t362 * qJD(3);
	t317 = t321 * qJD(3);
	t1 = [0, 0, -t320 * t346 - t323 * t353, -t319 * t344 + (-t324 * t346 - t330 * t344) * qJD(4), 0, 0; 0, 0, t318 * t346 - t321 * t353, -t317 * t344 + (-t329 * t344 + t346 * t362) * qJD(4), 0, 0; 0, 0, -t326 * t346 - t327 * t353, -t325 * t344 + (-t328 * t346 - t331 * t344) * qJD(4), 0, 0; 0, 0, t320 * t344 - t323 * t352, -t319 * t346 + (t324 * t344 - t330 * t346) * qJD(4), 0, 0; 0, 0, -t318 * t344 - t321 * t352, -t317 * t346 + (-t329 * t346 - t344 * t362) * qJD(4), 0, 0; 0, 0, t326 * t344 - t327 * t352, -t325 * t346 + (t328 * t344 - t331 * t346) * qJD(4), 0, 0; 0, 0, t319, 0, 0, 0; 0, 0, t317, 0, 0, 0; 0, 0, t325, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:16:25
	% EndTime: 2019-10-09 21:16:26
	% DurationCPUTime: 0.56s
	% Computational Cost: add. (438->73), mult. (1401->151), div. (0->0), fcn. (1686->14), ass. (0->66)
	t510 = sin(pkin(12));
	t513 = sin(pkin(6));
	t517 = cos(pkin(6));
	t520 = sin(qJ(3));
	t512 = sin(pkin(7));
	t550 = cos(qJ(3));
	t536 = t512 * t550;
	t514 = cos(pkin(12));
	t516 = cos(pkin(7));
	t545 = t514 * t516;
	t552 = (-t510 * t520 + t550 * t545) * t513 + t517 * t536;
	t511 = sin(pkin(11));
	t515 = cos(pkin(11));
	t544 = t515 * t517;
	t504 = t510 * t544 + t511 * t514;
	t529 = -t511 * t510 + t514 * t544;
	t527 = t529 * t516;
	t547 = t513 * t512;
	t490 = t504 * t550 + (-t515 * t547 + t527) * t520;
	t548 = t511 * t517;
	t546 = t513 * t516;
	t519 = sin(qJ(4));
	t543 = qJD(4) * t519;
	t522 = cos(qJ(4));
	t542 = qJD(4) * t522;
	t518 = sin(qJ(5));
	t541 = qJD(5) * t518;
	t521 = cos(qJ(5));
	t540 = qJD(5) * t521;
	t539 = qJD(5) * t522;
	t535 = t513 * t536;
	t489 = t504 * t520 + t515 * t535 - t550 * t527;
	t485 = t489 * qJD(3);
	t532 = t489 * t539 - t485;
	t505 = -t510 * t548 + t515 * t514;
	t528 = t515 * t510 + t514 * t548;
	t526 = t528 * t516;
	t491 = t505 * t520 - t511 * t535 + t550 * t526;
	t487 = t491 * qJD(3);
	t531 = t491 * t539 - t487;
	t495 = t552 * qJD(3);
	t530 = -t539 * t552 + t495;
	t499 = -t529 * t512 - t515 * t546;
	t482 = t490 * t522 + t499 * t519;
	t481 = -t490 * t519 + t499 * t522;
	t492 = t505 * t550 + (t511 * t547 - t526) * t520;
	t500 = t511 * t546 + t528 * t512;
	t484 = t492 * t522 + t500 * t519;
	t483 = -t492 * t519 + t500 * t522;
	t498 = t517 * t512 * t520 + (t550 * t510 + t520 * t545) * t513;
	t503 = -t514 * t547 + t517 * t516;
	t494 = t498 * t522 + t503 * t519;
	t493 = -t498 * t519 + t503 * t522;
	t486 = t490 * qJD(3);
	t525 = qJD(5) * t490 - t486 * t522 + t489 * t543;
	t488 = t492 * qJD(3);
	t524 = qJD(5) * t492 - t488 * t522 + t491 * t543;
	t496 = t498 * qJD(3);
	t523 = qJD(5) * t498 - t496 * t522 - t543 * t552;
	t480 = t493 * qJD(4) + t495 * t522;
	t479 = -t494 * qJD(4) - t495 * t519;
	t478 = t483 * qJD(4) - t487 * t522;
	t477 = -t484 * qJD(4) + t487 * t519;
	t476 = t481 * qJD(4) - t485 * t522;
	t475 = -t482 * qJD(4) + t485 * t519;
	t1 = [0, 0, t531 * t518 + t524 * t521, t477 * t521 - t483 * t541, -t478 * t518 + t488 * t521 + (-t484 * t521 - t491 * t518) * qJD(5), 0; 0, 0, t532 * t518 + t525 * t521, t475 * t521 - t481 * t541, -t476 * t518 + t486 * t521 + (-t482 * t521 - t489 * t518) * qJD(5), 0; 0, 0, t530 * t518 + t523 * t521, t479 * t521 - t493 * t541, -t480 * t518 + t496 * t521 + (-t494 * t521 + t518 * t552) * qJD(5), 0; 0, 0, -t524 * t518 + t531 * t521, -t477 * t518 - t483 * t540, -t478 * t521 - t488 * t518 + (t484 * t518 - t491 * t521) * qJD(5), 0; 0, 0, -t525 * t518 + t532 * t521, -t475 * t518 - t481 * t540, -t476 * t521 - t486 * t518 + (t482 * t518 - t489 * t521) * qJD(5), 0; 0, 0, -t523 * t518 + t530 * t521, -t479 * t518 - t493 * t540, -t480 * t521 - t496 * t518 + (t494 * t518 + t521 * t552) * qJD(5), 0; 0, 0, -t488 * t519 - t491 * t542, t478, 0, 0; 0, 0, -t486 * t519 - t489 * t542, t476, 0, 0; 0, 0, -t496 * t519 + t542 * t552, t480, 0, 0;];
	JRD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiRD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-09 21:16:27
	% EndTime: 2019-10-09 21:16:28
	% DurationCPUTime: 0.59s
	% Computational Cost: add. (438->73), mult. (1401->151), div. (0->0), fcn. (1686->14), ass. (0->66)
	t589 = sin(pkin(12));
	t592 = sin(pkin(6));
	t596 = cos(pkin(6));
	t599 = sin(qJ(3));
	t591 = sin(pkin(7));
	t629 = cos(qJ(3));
	t615 = t591 * t629;
	t593 = cos(pkin(12));
	t595 = cos(pkin(7));
	t624 = t593 * t595;
	t631 = (-t589 * t599 + t629 * t624) * t592 + t596 * t615;
	t590 = sin(pkin(11));
	t594 = cos(pkin(11));
	t623 = t594 * t596;
	t583 = t589 * t623 + t590 * t593;
	t608 = -t590 * t589 + t593 * t623;
	t606 = t608 * t595;
	t626 = t592 * t591;
	t569 = t583 * t629 + (-t594 * t626 + t606) * t599;
	t627 = t590 * t596;
	t625 = t592 * t595;
	t598 = sin(qJ(4));
	t622 = qJD(4) * t598;
	t601 = cos(qJ(4));
	t621 = qJD(4) * t601;
	t597 = sin(qJ(5));
	t620 = qJD(5) * t597;
	t600 = cos(qJ(5));
	t619 = qJD(5) * t600;
	t618 = qJD(5) * t601;
	t614 = t592 * t615;
	t568 = t583 * t599 + t594 * t614 - t629 * t606;
	t564 = t568 * qJD(3);
	t611 = t568 * t618 - t564;
	t584 = -t589 * t627 + t594 * t593;
	t607 = t594 * t589 + t593 * t627;
	t605 = t607 * t595;
	t570 = t584 * t599 - t590 * t614 + t629 * t605;
	t566 = t570 * qJD(3);
	t610 = t570 * t618 - t566;
	t574 = t631 * qJD(3);
	t609 = -t618 * t631 + t574;
	t578 = -t608 * t591 - t594 * t625;
	t561 = t569 * t601 + t578 * t598;
	t560 = -t569 * t598 + t578 * t601;
	t571 = t584 * t629 + (t590 * t626 - t605) * t599;
	t579 = t590 * t625 + t607 * t591;
	t563 = t571 * t601 + t579 * t598;
	t562 = -t571 * t598 + t579 * t601;
	t577 = t596 * t591 * t599 + (t629 * t589 + t599 * t624) * t592;
	t582 = -t593 * t626 + t596 * t595;
	t573 = t577 * t601 + t582 * t598;
	t572 = -t577 * t598 + t582 * t601;
	t565 = t569 * qJD(3);
	t604 = qJD(5) * t569 - t565 * t601 + t568 * t622;
	t567 = t571 * qJD(3);
	t603 = qJD(5) * t571 - t567 * t601 + t570 * t622;
	t575 = t577 * qJD(3);
	t602 = qJD(5) * t577 - t575 * t601 - t622 * t631;
	t559 = t572 * qJD(4) + t574 * t601;
	t558 = -t573 * qJD(4) - t574 * t598;
	t557 = t562 * qJD(4) - t566 * t601;
	t556 = -t563 * qJD(4) + t566 * t598;
	t555 = t560 * qJD(4) - t564 * t601;
	t554 = -t561 * qJD(4) + t564 * t598;
	t1 = [0, 0, t610 * t597 + t603 * t600, t556 * t600 - t562 * t620, -t557 * t597 + t567 * t600 + (-t563 * t600 - t570 * t597) * qJD(5), 0; 0, 0, t611 * t597 + t604 * t600, t554 * t600 - t560 * t620, -t555 * t597 + t565 * t600 + (-t561 * t600 - t568 * t597) * qJD(5), 0; 0, 0, t609 * t597 + t602 * t600, t558 * t600 - t572 * t620, -t559 * t597 + t575 * t600 + (-t573 * t600 + t597 * t631) * qJD(5), 0; 0, 0, -t567 * t598 - t570 * t621, t557, 0, 0; 0, 0, -t565 * t598 - t568 * t621, t555, 0, 0; 0, 0, -t575 * t598 + t621 * t631, t559, 0, 0; 0, 0, t603 * t597 - t610 * t600, t556 * t597 + t562 * t619, t557 * t600 + t567 * t597 + (-t563 * t597 + t570 * t600) * qJD(5), 0; 0, 0, t604 * t597 - t611 * t600, t554 * t597 + t560 * t619, t555 * t600 + t565 * t597 + (-t561 * t597 + t568 * t600) * qJD(5), 0; 0, 0, t602 * t597 - t609 * t600, t558 * t597 + t572 * t619, t559 * t600 + t575 * t597 + (-t573 * t597 - t600 * t631) * qJD(5), 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,6);
end