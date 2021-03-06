% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RRRPRR1
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,d6,theta4]';
% 
% Output:
% JRD_rot [9x6]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 11:55
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S6RRRPRR1_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR1_jacobiRD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRR1_jacobiRD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRPRR1_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPRR1_jacobiRD_rot_sym_varpar: pkin has to be [11x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:55:18
	% EndTime: 2019-10-10 11:55:18
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:55:18
	% EndTime: 2019-10-10 11:55:18
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (3->3), mult. (4->2), div. (0->0), fcn. (4->2), ass. (0->3)
	t31 = qJD(1) * sin(qJ(1));
	t30 = qJD(1) * cos(qJ(1));
	t1 = [-t30, 0, 0, 0, 0, 0; -t31, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; t31, 0, 0, 0, 0, 0; -t30, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiRD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:55:18
	% EndTime: 2019-10-10 11:55:18
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
	% StartTime: 2019-10-10 11:55:18
	% EndTime: 2019-10-10 11:55:18
	% DurationCPUTime: 0.04s
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
	% StartTime: 2019-10-10 11:55:18
	% EndTime: 2019-10-10 11:55:18
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (89->14), mult. (54->14), div. (0->0), fcn. (54->4), ass. (0->17)
	t85 = qJ(2) + qJ(3) + pkin(11);
	t83 = sin(t85);
	t86 = qJD(2) + qJD(3);
	t94 = t86 * t83;
	t84 = cos(t85);
	t93 = t86 * t84;
	t87 = sin(qJ(1));
	t92 = t86 * t87;
	t88 = cos(qJ(1));
	t91 = t86 * t88;
	t90 = qJD(1) * t87;
	t89 = qJD(1) * t88;
	t82 = t83 * t92 - t84 * t89;
	t81 = t83 * t89 + t84 * t92;
	t80 = t83 * t91 + t84 * t90;
	t79 = t83 * t90 - t84 * t91;
	t1 = [t82, t79, t79, 0, 0, 0; -t80, -t81, -t81, 0, 0, 0; 0, -t94, -t94, 0, 0, 0; t81, t80, t80, 0, 0, 0; t79, t82, t82, 0, 0, 0; 0, -t93, -t93, 0, 0, 0; -t90, 0, 0, 0, 0, 0; t89, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:55:18
	% EndTime: 2019-10-10 11:55:18
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (181->17), mult. (72->14), div. (0->0), fcn. (72->4), ass. (0->17)
	t95 = qJ(2) + qJ(3) + pkin(11) + qJ(5);
	t93 = sin(t95);
	t96 = qJD(2) + qJD(3) + qJD(5);
	t104 = t96 * t93;
	t94 = cos(t95);
	t103 = t96 * t94;
	t97 = sin(qJ(1));
	t102 = t96 * t97;
	t98 = cos(qJ(1));
	t101 = t96 * t98;
	t100 = qJD(1) * t97;
	t99 = qJD(1) * t98;
	t92 = t93 * t102 - t94 * t99;
	t91 = t94 * t102 + t93 * t99;
	t90 = t94 * t100 + t93 * t101;
	t89 = t93 * t100 - t94 * t101;
	t1 = [t92, t89, t89, 0, t89, 0; -t90, -t91, -t91, 0, -t91, 0; 0, -t104, -t104, 0, -t104, 0; t91, t90, t90, 0, t90, 0; t89, t92, t92, 0, t92, 0; 0, -t103, -t103, 0, -t103, 0; -t100, 0, 0, 0, 0, 0; t99, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiRD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:55:20
	% EndTime: 2019-10-10 11:55:20
	% DurationCPUTime: 0.14s
	% Computational Cost: add. (435->29), mult. (279->57), div. (0->0), fcn. (279->6), ass. (0->41)
	t357 = qJD(2) + qJD(3) + qJD(5);
	t358 = sin(qJ(6));
	t380 = t357 * t358;
	t359 = sin(qJ(1));
	t379 = t357 * t359;
	t360 = cos(qJ(6));
	t378 = t357 * t360;
	t361 = cos(qJ(1));
	t377 = t357 * t361;
	t376 = t360 * t361;
	t375 = qJD(1) * t359;
	t374 = qJD(1) * t361;
	t373 = qJD(6) * t358;
	t372 = qJD(6) * t360;
	t371 = qJD(6) * t361;
	t356 = qJ(2) + qJ(3) + pkin(11) + qJ(5);
	t354 = sin(t356);
	t370 = t354 * t378;
	t369 = t354 * t379;
	t355 = cos(t356);
	t368 = t355 * t379;
	t367 = t354 * t377;
	t366 = t355 * t377;
	t365 = qJD(6) * t355 - qJD(1);
	t364 = qJD(1) * t355 - qJD(6);
	t363 = t365 * t358;
	t362 = t364 * t359 + t367;
	t353 = t357 * t355;
	t352 = t355 * t374 - t369;
	t351 = -t355 * t375 - t367;
	t350 = -t355 * t373 - t370;
	t349 = t354 * t380 - t355 * t372;
	t348 = -t360 * t368 + (t359 * t373 - t360 * t374) * t354;
	t347 = t358 * t368 + (t358 * t374 + t359 * t372) * t354;
	t346 = -t360 * t366 + (t358 * t371 + t360 * t375) * t354;
	t345 = t358 * t366 + (-t358 * t375 + t360 * t371) * t354;
	t344 = -t364 * t376 + (t363 + t370) * t359;
	t343 = t365 * t360 * t359 + (t364 * t361 - t369) * t358;
	t342 = t362 * t360 + t361 * t363;
	t341 = t362 * t358 - t365 * t376;
	t1 = [t344, t346, t346, 0, t346, t341; -t342, t348, t348, 0, t348, -t343; 0, t350, t350, 0, t350, -t354 * t372 - t355 * t380; t343, t345, t345, 0, t345, t342; t341, t347, t347, 0, t347, t344; 0, t349, t349, 0, t349, t354 * t373 - t355 * t378; -t354 * t374 - t368, t351, t351, 0, t351, 0; -t354 * t375 + t366, t352, t352, 0, t352, 0; 0, t353, t353, 0, t353, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,6);
end