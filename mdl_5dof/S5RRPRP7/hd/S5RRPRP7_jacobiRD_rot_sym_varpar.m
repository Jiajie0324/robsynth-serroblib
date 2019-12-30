% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S5RRPRP7
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
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d4,theta3]';
% 
% Output:
% JRD_rot [9x5]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 18:50
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S5RRPRP7_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRP7_jacobiRD_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRP7_jacobiRD_rot_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RRPRP7_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRPRP7_jacobiRD_rot_sym_varpar: pkin has to be [8x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 18:50:30
	% EndTime: 2019-12-29 18:50:30
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 18:50:30
	% EndTime: 2019-12-29 18:50:30
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (3->3), mult. (4->2), div. (0->0), fcn. (4->2), ass. (0->3)
	t31 = qJD(1) * sin(qJ(1));
	t30 = qJD(1) * cos(qJ(1));
	t1 = [-t30, 0, 0, 0, 0; -t31, 0, 0, 0, 0; 0, 0, 0, 0, 0; t31, 0, 0, 0, 0; -t30, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiRD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 18:50:30
	% EndTime: 2019-12-29 18:50:30
	% DurationCPUTime: 0.06s
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
	t1 = [t32, t29, 0, 0, 0; -t30, -t31, 0, 0, 0; 0, -t39, 0, 0, 0; t31, t30, 0, 0, 0; t29, t32, 0, 0, 0; 0, -t38, 0, 0, 0; -t41, 0, 0, 0, 0; t40, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiRD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 18:50:35
	% EndTime: 2019-12-29 18:50:35
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (29->10), mult. (36->14), div. (0->0), fcn. (36->4), ass. (0->14)
	t50 = sin(qJ(1));
	t55 = qJD(1) * t50;
	t51 = cos(qJ(1));
	t54 = qJD(1) * t51;
	t53 = qJD(2) * t50;
	t52 = qJD(2) * t51;
	t49 = qJ(2) + pkin(8);
	t48 = cos(t49);
	t47 = sin(t49);
	t46 = t47 * t53 - t48 * t54;
	t45 = t47 * t54 + t48 * t53;
	t44 = t47 * t52 + t48 * t55;
	t43 = t47 * t55 - t48 * t52;
	t1 = [t46, t43, 0, 0, 0; -t44, -t45, 0, 0, 0; 0, -qJD(2) * t47, 0, 0, 0; t45, t44, 0, 0, 0; t43, t46, 0, 0, 0; 0, -qJD(2) * t48, 0, 0, 0; -t55, 0, 0, 0, 0; t54, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 18:50:32
	% EndTime: 2019-12-29 18:50:32
	% DurationCPUTime: 0.18s
	% Computational Cost: add. (101->28), mult. (173->57), div. (0->0), fcn. (173->6), ass. (0->31)
	t256 = cos(qJ(4));
	t257 = cos(qJ(1));
	t276 = t256 * t257;
	t255 = sin(qJ(1));
	t275 = qJD(1) * t255;
	t274 = qJD(1) * t257;
	t254 = sin(qJ(4));
	t273 = qJD(2) * t254;
	t272 = qJD(2) * t255;
	t271 = qJD(2) * t256;
	t270 = qJD(2) * t257;
	t269 = qJD(4) * t254;
	t268 = qJD(4) * t256;
	t267 = qJD(4) * t257;
	t253 = qJ(2) + pkin(8);
	t251 = sin(t253);
	t266 = t251 * t271;
	t265 = t251 * t272;
	t252 = cos(t253);
	t264 = t252 * t272;
	t263 = t251 * t270;
	t262 = t252 * t270;
	t261 = qJD(4) * t252 - qJD(1);
	t260 = qJD(1) * t252 - qJD(4);
	t259 = t261 * t254;
	t258 = t260 * t255 + t263;
	t250 = -t260 * t276 + (t259 + t266) * t255;
	t249 = t261 * t256 * t255 + (t260 * t257 - t265) * t254;
	t248 = t258 * t256 + t257 * t259;
	t247 = t258 * t254 - t261 * t276;
	t1 = [t250, -t256 * t262 + (t254 * t267 + t256 * t275) * t251, 0, t247, 0; -t248, -t256 * t264 + (t255 * t269 - t256 * t274) * t251, 0, -t249, 0; 0, -t252 * t269 - t266, 0, -t251 * t268 - t252 * t273, 0; t249, t254 * t262 + (-t254 * t275 + t256 * t267) * t251, 0, t248, 0; t247, t254 * t264 + (t254 * t274 + t255 * t268) * t251, 0, t250, 0; 0, t251 * t273 - t252 * t268, 0, t251 * t269 - t252 * t271, 0; -t251 * t274 - t264, -t252 * t275 - t263, 0, 0, 0; -t251 * t275 + t262, t252 * t274 - t265, 0, 0, 0; 0, qJD(2) * t252, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 18:50:33
	% EndTime: 2019-12-29 18:50:33
	% DurationCPUTime: 0.20s
	% Computational Cost: add. (101->28), mult. (173->57), div. (0->0), fcn. (173->6), ass. (0->31)
	t320 = cos(qJ(1));
	t316 = qJ(2) + pkin(8);
	t315 = cos(t316);
	t322 = qJD(1) * t315 - qJD(4);
	t339 = t322 * t320;
	t318 = sin(qJ(1));
	t314 = sin(t316);
	t332 = qJD(2) * t320;
	t325 = t314 * t332;
	t338 = t322 * t318 + t325;
	t337 = qJD(1) * t318;
	t336 = qJD(1) * t320;
	t317 = sin(qJ(4));
	t335 = qJD(2) * t317;
	t334 = qJD(2) * t318;
	t319 = cos(qJ(4));
	t333 = qJD(2) * t319;
	t331 = qJD(4) * t317;
	t330 = qJD(4) * t319;
	t329 = qJD(4) * t320;
	t328 = t314 * t333;
	t327 = t314 * t334;
	t326 = t315 * t334;
	t324 = t315 * t332;
	t323 = -qJD(4) * t315 + qJD(1);
	t321 = t323 * t320;
	t313 = t319 * t339 + (t323 * t317 - t328) * t318;
	t312 = t323 * t319 * t318 + (t327 - t339) * t317;
	t311 = t317 * t321 - t338 * t319;
	t310 = t338 * t317 + t319 * t321;
	t1 = [-t313, -t319 * t324 + (t317 * t329 + t319 * t337) * t314, 0, t310, 0; t311, -t319 * t326 + (t318 * t331 - t319 * t336) * t314, 0, t312, 0; 0, -t315 * t331 - t328, 0, -t314 * t330 - t315 * t335, 0; -t314 * t336 - t326, -t315 * t337 - t325, 0, 0, 0; -t314 * t337 + t324, t315 * t336 - t327, 0, 0, 0; 0, qJD(2) * t315, 0, 0, 0; t312, -t317 * t324 + (t317 * t337 - t319 * t329) * t314, 0, t311, 0; -t310, -t317 * t326 + (-t317 * t336 - t318 * t330) * t314, 0, t313, 0; 0, -t314 * t335 + t315 * t330, 0, -t314 * t331 + t315 * t333, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,5);
end