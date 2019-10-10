% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RRRRRP2
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5]';
% 
% Output:
% JRD_rot [9x6]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 12:58
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S6RRRRRP2_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP2_jacobiRD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP2_jacobiRD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRRRP2_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRRP2_jacobiRD_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:58:34
	% EndTime: 2019-10-10 12:58:34
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:58:34
	% EndTime: 2019-10-10 12:58:34
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
	% StartTime: 2019-10-10 12:58:34
	% EndTime: 2019-10-10 12:58:34
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
	% StartTime: 2019-10-10 12:58:34
	% EndTime: 2019-10-10 12:58:34
	% DurationCPUTime: 0.05s
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
	% StartTime: 2019-10-10 12:58:34
	% EndTime: 2019-10-10 12:58:34
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (143->17), mult. (72->14), div. (0->0), fcn. (72->4), ass. (0->17)
	t90 = qJ(2) + qJ(3) + qJ(4);
	t87 = sin(t90);
	t89 = qJD(2) + qJD(3) + qJD(4);
	t98 = t89 * t87;
	t88 = cos(t90);
	t97 = t89 * t88;
	t91 = sin(qJ(1));
	t96 = t89 * t91;
	t92 = cos(qJ(1));
	t95 = t89 * t92;
	t94 = qJD(1) * t91;
	t93 = qJD(1) * t92;
	t86 = t87 * t96 - t88 * t93;
	t85 = t87 * t93 + t88 * t96;
	t84 = t87 * t95 + t88 * t94;
	t83 = t87 * t94 - t88 * t95;
	t1 = [t86, t83, t83, t83, 0, 0; -t84, -t85, -t85, -t85, 0, 0; 0, -t98, -t98, -t98, 0, 0; t85, t84, t84, t84, 0, 0; t83, t86, t86, t86, 0, 0; 0, -t97, -t97, -t97, 0, 0; -t94, 0, 0, 0, 0, 0; t93, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:58:36
	% EndTime: 2019-10-10 12:58:36
	% DurationCPUTime: 0.14s
	% Computational Cost: add. (340->29), mult. (279->57), div. (0->0), fcn. (279->6), ass. (0->41)
	t349 = qJD(2) + qJD(3) + qJD(4);
	t351 = sin(qJ(5));
	t373 = t349 * t351;
	t352 = sin(qJ(1));
	t372 = t349 * t352;
	t353 = cos(qJ(5));
	t371 = t349 * t353;
	t354 = cos(qJ(1));
	t370 = t349 * t354;
	t369 = t353 * t354;
	t368 = qJD(1) * t352;
	t367 = qJD(1) * t354;
	t366 = qJD(5) * t351;
	t365 = qJD(5) * t353;
	t364 = qJD(5) * t354;
	t350 = qJ(2) + qJ(3) + qJ(4);
	t347 = sin(t350);
	t363 = t347 * t371;
	t362 = t347 * t372;
	t348 = cos(t350);
	t361 = t348 * t372;
	t360 = t347 * t370;
	t359 = t348 * t370;
	t358 = qJD(5) * t348 - qJD(1);
	t357 = qJD(1) * t348 - qJD(5);
	t356 = t358 * t351;
	t355 = t357 * t352 + t360;
	t346 = t349 * t348;
	t345 = t348 * t367 - t362;
	t344 = -t348 * t368 - t360;
	t343 = -t348 * t366 - t363;
	t342 = t347 * t373 - t348 * t365;
	t341 = -t353 * t361 + (t352 * t366 - t353 * t367) * t347;
	t340 = t351 * t361 + (t351 * t367 + t352 * t365) * t347;
	t339 = -t353 * t359 + (t351 * t364 + t353 * t368) * t347;
	t338 = t351 * t359 + (-t351 * t368 + t353 * t364) * t347;
	t337 = -t357 * t369 + (t356 + t363) * t352;
	t336 = t358 * t353 * t352 + (t357 * t354 - t362) * t351;
	t335 = t355 * t353 + t354 * t356;
	t334 = t355 * t351 - t358 * t369;
	t1 = [t337, t339, t339, t339, t334, 0; -t335, t341, t341, t341, -t336, 0; 0, t343, t343, t343, -t347 * t365 - t348 * t373, 0; t336, t338, t338, t338, t335, 0; t334, t340, t340, t340, t337, 0; 0, t342, t342, t342, t347 * t366 - t348 * t371, 0; -t347 * t367 - t361, t344, t344, t344, 0, 0; -t347 * t368 + t359, t345, t345, t345, 0, 0; 0, t346, t346, t346, 0, 0;];
	JRD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiRD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:58:36
	% EndTime: 2019-10-10 12:58:37
	% DurationCPUTime: 0.16s
	% Computational Cost: add. (340->29), mult. (279->57), div. (0->0), fcn. (279->6), ass. (0->41)
	t414 = cos(qJ(1));
	t410 = qJ(2) + qJ(3) + qJ(4);
	t408 = cos(t410);
	t416 = qJD(1) * t408 - qJD(5);
	t433 = t416 * t414;
	t412 = sin(qJ(1));
	t407 = sin(t410);
	t409 = qJD(2) + qJD(3) + qJD(4);
	t428 = t409 * t414;
	t419 = t407 * t428;
	t432 = t416 * t412 + t419;
	t411 = sin(qJ(5));
	t431 = t409 * t411;
	t430 = t409 * t412;
	t413 = cos(qJ(5));
	t429 = t409 * t413;
	t427 = qJD(1) * t412;
	t426 = qJD(1) * t414;
	t425 = qJD(5) * t411;
	t424 = qJD(5) * t413;
	t423 = qJD(5) * t414;
	t422 = t407 * t429;
	t421 = t407 * t430;
	t420 = t408 * t430;
	t418 = t408 * t428;
	t417 = -qJD(5) * t408 + qJD(1);
	t415 = t417 * t414;
	t406 = t409 * t408;
	t405 = t408 * t426 - t421;
	t404 = -t408 * t427 - t419;
	t403 = -t408 * t425 - t422;
	t402 = -t407 * t431 + t408 * t424;
	t401 = -t413 * t420 + (t412 * t425 - t413 * t426) * t407;
	t400 = -t411 * t420 + (-t411 * t426 - t412 * t424) * t407;
	t399 = -t413 * t418 + (t411 * t423 + t413 * t427) * t407;
	t398 = -t411 * t418 + (t411 * t427 - t413 * t423) * t407;
	t397 = t413 * t433 + (t417 * t411 - t422) * t412;
	t396 = t417 * t413 * t412 + (t421 - t433) * t411;
	t395 = t411 * t415 - t432 * t413;
	t394 = t432 * t411 + t413 * t415;
	t1 = [-t397, t399, t399, t399, t394, 0; t395, t401, t401, t401, t396, 0; 0, t403, t403, t403, -t407 * t424 - t408 * t431, 0; -t407 * t426 - t420, t404, t404, t404, 0, 0; -t407 * t427 + t418, t405, t405, t405, 0, 0; 0, t406, t406, t406, 0, 0; t396, t398, t398, t398, t395, 0; -t394, t400, t400, t400, t397, 0; 0, t402, t402, t402, -t407 * t425 + t408 * t429, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,6);
end