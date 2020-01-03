% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S5RRPRR14
% Use Code from Maple symbolic Code Generation
% 
% Rotationsmatrix-Jacobi-Matrix: Differentieller Zusammenhang zwischen
% gestapelter Endeffektor-Rotationsmatrix und verallgemeinerten Koordinaten.
% Zeitableitung: Die Gradientenmatrix wird nochmal nach der Zeit abgeleitet.
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt. (0=Basis).
%   Siehe auch: bsp_3T1R_fkine_fixb_rotmat_mdh_sym_varpar.m
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d1,d2,d4,d5,theta3]';
% 
% Output:
% JRD_rot [9x5]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 20:40
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S5RRPRR14_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR14_jacobiRD_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRR14_jacobiRD_rot_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RRPRR14_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S5RRPRR14_jacobiRD_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 20:40:13
	% EndTime: 2019-12-31 20:40:13
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 20:40:13
	% EndTime: 2019-12-31 20:40:13
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (3->3), mult. (4->2), div. (0->0), fcn. (4->2), ass. (0->3)
	t31 = qJD(1) * sin(qJ(1));
	t30 = qJD(1) * cos(qJ(1));
	t1 = [-t30, 0, 0, 0, 0; -t31, 0, 0, 0, 0; 0, 0, 0, 0, 0; t31, 0, 0, 0, 0; -t30, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiRD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 20:40:13
	% EndTime: 2019-12-31 20:40:13
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (27->13), mult. (88->22), div. (0->0), fcn. (88->6), ass. (0->21)
	t158 = sin(qJ(2));
	t159 = sin(qJ(1));
	t171 = t158 * t159;
	t161 = cos(qJ(1));
	t170 = t158 * t161;
	t160 = cos(qJ(2));
	t169 = t159 * t160;
	t168 = t160 * t161;
	t156 = sin(pkin(5));
	t167 = qJD(1) * t156;
	t166 = qJD(2) * t156;
	t157 = cos(pkin(5));
	t165 = -t157 * t168 + t171;
	t164 = t157 * t169 + t170;
	t163 = t157 * t170 + t169;
	t162 = t157 * t171 - t168;
	t155 = t162 * qJD(1) + t165 * qJD(2);
	t154 = t164 * qJD(1) + t163 * qJD(2);
	t153 = t163 * qJD(1) + t164 * qJD(2);
	t152 = t165 * qJD(1) + t162 * qJD(2);
	t1 = [t155, t152, 0, 0, 0; -t153, -t154, 0, 0, 0; 0, -t158 * t166, 0, 0, 0; t154, t153, 0, 0, 0; t152, t155, 0, 0, 0; 0, -t160 * t166, 0, 0, 0; -t159 * t167, 0, 0, 0, 0; t161 * t167, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiRD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 20:40:14
	% EndTime: 2019-12-31 20:40:14
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (43->18), mult. (148->39), div. (0->0), fcn. (148->8), ass. (0->25)
	t231 = sin(qJ(2));
	t232 = sin(qJ(1));
	t246 = t231 * t232;
	t234 = cos(qJ(1));
	t245 = t231 * t234;
	t233 = cos(qJ(2));
	t244 = t232 * t233;
	t243 = t233 * t234;
	t228 = sin(pkin(5));
	t242 = qJD(1) * t228;
	t241 = qJD(2) * t231;
	t230 = cos(pkin(5));
	t240 = t230 * t246;
	t239 = t232 * t242;
	t238 = t234 * t242;
	t237 = t228 * t241;
	t236 = -t230 * t244 - t245;
	t235 = -t230 * t245 - t244;
	t229 = cos(pkin(10));
	t227 = sin(pkin(10));
	t224 = -qJD(1) * t240 - t232 * t241 + (qJD(2) * t230 + qJD(1)) * t243;
	t223 = t236 * qJD(1) + t235 * qJD(2);
	t222 = t235 * qJD(1) + t236 * qJD(2);
	t221 = (t240 - t243) * qJD(2) + (-t230 * t243 + t246) * qJD(1);
	t1 = [-t224 * t229 - t227 * t239, t221 * t229, 0, 0, 0; t222 * t229 + t227 * t238, t223 * t229, 0, 0, 0; 0, -t229 * t237, 0, 0, 0; t224 * t227 - t229 * t239, -t221 * t227, 0, 0, 0; -t222 * t227 + t229 * t238, -t223 * t227, 0, 0, 0; 0, t227 * t237, 0, 0, 0; t223, t222, 0, 0, 0; -t221, t224, 0, 0, 0; 0, t228 * qJD(2) * t233, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 20:40:14
	% EndTime: 2019-12-31 20:40:14
	% DurationCPUTime: 0.13s
	% Computational Cost: add. (144->36), mult. (310->70), div. (0->0), fcn. (322->8), ass. (0->38)
	t303 = cos(pkin(5));
	t305 = sin(qJ(1));
	t304 = sin(qJ(2));
	t324 = t305 * t304;
	t315 = t303 * t324;
	t319 = qJD(2) * t304;
	t306 = cos(qJ(2));
	t307 = cos(qJ(1));
	t321 = t307 * t306;
	t291 = -qJD(1) * t315 - t305 * t319 + (qJD(2) * t303 + qJD(1)) * t321;
	t322 = t307 * t304;
	t323 = t305 * t306;
	t293 = t303 * t322 + t323;
	t301 = pkin(10) + qJ(4);
	t299 = sin(t301);
	t300 = cos(t301);
	t302 = sin(pkin(5));
	t320 = qJD(1) * t302;
	t314 = t305 * t320;
	t325 = t302 * t307;
	t328 = (-t293 * t300 + t299 * t325) * qJD(4) - t291 * t299 + t300 * t314;
	t327 = t302 * t304;
	t326 = t302 * t305;
	t318 = qJD(4) * t299;
	t317 = qJD(4) * t300;
	t316 = qJD(4) * t306;
	t313 = t307 * t320;
	t312 = t302 * qJD(2) * t306;
	t292 = t303 * t321 - t324;
	t294 = -t303 * t323 - t322;
	t310 = t315 - t321;
	t308 = -t291 * t300 + t317 * t325 + (qJD(4) * t293 - t314) * t299;
	t290 = t294 * qJD(1) - t293 * qJD(2);
	t289 = -t293 * qJD(1) + t294 * qJD(2);
	t288 = -t292 * qJD(1) + t310 * qJD(2);
	t287 = t299 * t313 + t289 * t300 + (t299 * t310 + t300 * t326) * qJD(4);
	t286 = t300 * t313 - t289 * t299 + (-t299 * t326 + t300 * t310) * qJD(4);
	t1 = [t308, t288 * t300 - t294 * t318, 0, t286, 0; t287, t290 * t300 - t292 * t318, 0, t328, 0; 0, (-t299 * t316 - t300 * t319) * t302, 0, -t299 * t312 + (-t299 * t303 - t300 * t327) * qJD(4), 0; -t328, -t288 * t299 - t294 * t317, 0, -t287, 0; t286, -t290 * t299 - t292 * t317, 0, t308, 0; 0, (t299 * t319 - t300 * t316) * t302, 0, -t300 * t312 + (t299 * t327 - t300 * t303) * qJD(4), 0; t290, t289, 0, 0, 0; -t288, t291, 0, 0, 0; 0, t312, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 20:40:15
	% EndTime: 2019-12-31 20:40:16
	% DurationCPUTime: 0.40s
	% Computational Cost: add. (424->74), mult. (898->140), div. (0->0), fcn. (964->10), ass. (0->67)
	t484 = sin(qJ(1));
	t481 = cos(pkin(5));
	t496 = qJD(2) * t481 + qJD(1);
	t483 = sin(qJ(2));
	t517 = t484 * t483;
	t504 = t481 * t517;
	t512 = qJD(2) * t483;
	t486 = cos(qJ(2));
	t487 = cos(qJ(1));
	t514 = t487 * t486;
	t455 = -qJD(1) * t504 - t484 * t512 + t496 * t514;
	t479 = pkin(10) + qJ(4);
	t477 = sin(t479);
	t478 = cos(t479);
	t515 = t487 * t483;
	t516 = t484 * t486;
	t466 = t481 * t515 + t516;
	t480 = sin(pkin(5));
	t518 = t480 * t487;
	t491 = t466 * t477 + t478 * t518;
	t513 = qJD(1) * t480;
	t501 = t484 * t513;
	t451 = t491 * qJD(4) - t455 * t478 - t477 * t501;
	t467 = t481 * t516 + t515;
	t454 = t467 * qJD(1) + t466 * qJD(2);
	t503 = t477 * t518;
	t460 = -t466 * t478 + t503;
	t502 = t481 * t514;
	t465 = -t502 + t517;
	t482 = sin(qJ(5));
	t485 = cos(qJ(5));
	t530 = t451 * t485 - t454 * t482 + (-t460 * t482 - t465 * t485) * qJD(5);
	t529 = (t460 * t485 - t465 * t482) * qJD(5) + t451 * t482 + t454 * t485;
	t508 = qJD(4) * t486;
	t526 = (qJD(2) * t478 - qJD(5)) * t483 + t477 * t508;
	t521 = t480 * t483;
	t520 = t480 * t484;
	t519 = t480 * t486;
	t511 = qJD(2) * t486;
	t510 = qJD(4) * t477;
	t509 = qJD(4) * t478;
	t507 = qJD(5) * t478;
	t506 = qJD(5) * t482;
	t505 = qJD(5) * t485;
	t500 = t487 * t513;
	t499 = t480 * t512;
	t498 = t480 * t511;
	t453 = -t466 * qJD(1) - t467 * qJD(2);
	t494 = t467 * t507 + t453;
	t493 = t465 * t507 + t455;
	t492 = (qJD(2) - t507) * t486;
	t468 = -t504 + t514;
	t461 = -t468 * t477 + t478 * t520;
	t462 = t468 * t478 + t477 * t520;
	t464 = t481 * t477 + t478 * t521;
	t463 = -t477 * t521 + t481 * t478;
	t449 = qJD(4) * t503 - t455 * t477 - t466 * t509 + t478 * t501;
	t452 = -qJD(1) * t502 - t487 * t511 + t496 * t517;
	t489 = qJD(5) * t468 + t452 * t478 + t467 * t510;
	t488 = qJD(5) * t466 - t454 * t478 + t465 * t510;
	t457 = t463 * qJD(4) + t478 * t498;
	t456 = -t464 * qJD(4) - t477 * t498;
	t448 = t461 * qJD(4) + t453 * t478 + t477 * t500;
	t447 = t462 * qJD(4) + t453 * t477 - t478 * t500;
	t446 = t448 * t485 - t452 * t482 + (-t462 * t482 + t467 * t485) * qJD(5);
	t445 = -t448 * t482 - t452 * t485 + (-t462 * t485 - t467 * t482) * qJD(5);
	t1 = [t530, t494 * t482 + t489 * t485, 0, -t447 * t485 - t461 * t506, t445; t446, t493 * t482 + t488 * t485, 0, t449 * t485 + t491 * t506, t529; 0, (t482 * t492 - t526 * t485) * t480, 0, t456 * t485 - t463 * t506, t485 * t499 - t457 * t482 + (-t464 * t485 + t482 * t519) * qJD(5); -t529, -t489 * t482 + t494 * t485, 0, t447 * t482 - t461 * t505, -t446; t445, -t488 * t482 + t493 * t485, 0, -t449 * t482 + t491 * t505, t530; 0, (t526 * t482 + t485 * t492) * t480, 0, -t456 * t482 - t463 * t505, -t482 * t499 - t457 * t485 + (t464 * t482 + t485 * t519) * qJD(5); t449, t452 * t477 - t467 * t509, 0, t448, 0; t447, -t454 * t477 - t465 * t509, 0, -t451, 0; 0, (-t477 * t512 + t478 * t508) * t480, 0, t457, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,5);
end