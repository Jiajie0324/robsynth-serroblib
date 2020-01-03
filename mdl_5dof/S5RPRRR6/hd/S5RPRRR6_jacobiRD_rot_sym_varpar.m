% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S5RPRRR6
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d4,d5,theta2]';
% 
% Output:
% JRD_rot [9x5]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 19:02
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S5RPRRR6_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR6_jacobiRD_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRR6_jacobiRD_rot_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RPRRR6_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRRR6_jacobiRD_rot_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 19:02:20
	% EndTime: 2019-12-31 19:02:20
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 19:02:20
	% EndTime: 2019-12-31 19:02:20
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
	% StartTime: 2019-12-31 19:02:20
	% EndTime: 2019-12-31 19:02:20
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (7->4), mult. (4->2), div. (0->0), fcn. (4->2), ass. (0->4)
	t35 = qJ(1) + pkin(9);
	t37 = qJD(1) * sin(t35);
	t36 = qJD(1) * cos(t35);
	t1 = [-t36, 0, 0, 0, 0; -t37, 0, 0, 0, 0; 0, 0, 0, 0, 0; t37, 0, 0, 0, 0; -t36, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiRD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 19:02:20
	% EndTime: 2019-12-31 19:02:20
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (29->10), mult. (36->14), div. (0->0), fcn. (36->4), ass. (0->14)
	t41 = sin(qJ(3));
	t46 = qJD(1) * t41;
	t42 = cos(qJ(3));
	t45 = qJD(1) * t42;
	t44 = qJD(3) * t41;
	t43 = qJD(3) * t42;
	t40 = qJ(1) + pkin(9);
	t39 = cos(t40);
	t38 = sin(t40);
	t37 = t38 * t44 - t39 * t45;
	t36 = t38 * t43 + t39 * t46;
	t35 = t38 * t45 + t39 * t44;
	t34 = t38 * t46 - t39 * t43;
	t1 = [t37, 0, t34, 0, 0; -t35, 0, -t36, 0, 0; 0, 0, -t44, 0, 0; t36, 0, t35, 0, 0; t34, 0, t37, 0, 0; 0, 0, -t43, 0, 0; -qJD(1) * t38, 0, 0, 0, 0; qJD(1) * t39, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 19:02:20
	% EndTime: 2019-12-31 19:02:20
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (87->15), mult. (54->14), div. (0->0), fcn. (54->4), ass. (0->16)
	t77 = qJ(3) + qJ(4);
	t73 = sin(t77);
	t75 = qJD(3) + qJD(4);
	t81 = t75 * t73;
	t74 = cos(t77);
	t80 = t75 * t74;
	t79 = qJD(1) * t73;
	t78 = qJD(1) * t74;
	t76 = qJ(1) + pkin(9);
	t72 = cos(t76);
	t71 = sin(t76);
	t70 = t71 * t81 - t72 * t78;
	t69 = t71 * t80 + t72 * t79;
	t68 = t71 * t78 + t72 * t81;
	t67 = t71 * t79 - t72 * t80;
	t1 = [t70, 0, t67, t67, 0; -t68, 0, -t69, -t69, 0; 0, 0, -t81, -t81, 0; t69, 0, t68, t68, 0; t67, 0, t70, t70, 0; 0, 0, -t80, -t80, 0; -qJD(1) * t71, 0, 0, 0, 0; qJD(1) * t72, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-31 19:02:21
	% EndTime: 2019-12-31 19:02:21
	% DurationCPUTime: 0.10s
	% Computational Cost: add. (240->26), mult. (226->47), div. (0->0), fcn. (226->6), ass. (0->42)
	t340 = cos(qJ(5));
	t338 = qJ(3) + qJ(4);
	t335 = cos(t338);
	t353 = qJD(1) * t335;
	t345 = -qJD(5) + t353;
	t359 = t340 * t345;
	t346 = qJD(5) * t335 - qJD(1);
	t334 = sin(t338);
	t336 = qJD(3) + qJD(4);
	t339 = sin(qJ(5));
	t356 = t336 * t339;
	t350 = t334 * t356;
	t358 = t346 * t340 - t350;
	t357 = t334 * t336;
	t331 = t336 * t335;
	t355 = t336 * t340;
	t354 = qJD(1) * t334;
	t352 = qJD(5) * t339;
	t351 = qJD(5) * t340;
	t349 = t334 * t355;
	t348 = t339 * t354;
	t347 = t340 * t354;
	t344 = t345 * t339;
	t343 = t334 * t351 + t335 * t356;
	t342 = t334 * t352 - t335 * t355;
	t341 = t346 * t339 + t349;
	t337 = qJ(1) + pkin(9);
	t333 = cos(t337);
	t332 = sin(t337);
	t330 = -t335 * t352 - t349;
	t329 = -t335 * t351 + t350;
	t328 = -t332 * t357 + t333 * t353;
	t327 = -t332 * t353 - t333 * t357;
	t326 = t342 * t332 - t333 * t347;
	t325 = t343 * t332 + t333 * t348;
	t324 = t332 * t347 + t342 * t333;
	t323 = -t332 * t348 + t343 * t333;
	t322 = t341 * t332 - t333 * t359;
	t321 = t358 * t332 + t333 * t344;
	t320 = t332 * t359 + t341 * t333;
	t319 = t332 * t344 - t358 * t333;
	t1 = [t322, 0, t324, t324, t319; -t320, 0, t326, t326, -t321; 0, 0, t330, t330, -t343; t321, 0, t323, t323, t320; t319, 0, t325, t325, t322; 0, 0, t329, t329, t342; -t332 * t331 - t333 * t354, 0, t327, t327, 0; t333 * t331 - t332 * t354, 0, t328, t328, 0; 0, 0, t331, t331, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,5);
end