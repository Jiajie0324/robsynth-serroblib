% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S5RPRRP10
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
%   pkin=[a2,a3,a4,a5,d1,d3,d4,theta2]';
% 
% Output:
% JRD_rot [9x5]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 17:30
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S5RPRRP10_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRP10_jacobiRD_rot_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRP10_jacobiRD_rot_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RPRRP10_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRP10_jacobiRD_rot_sym_varpar: pkin has to be [8x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 17:30:00
	% EndTime: 2019-12-29 17:30:00
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 17:29:54
	% EndTime: 2019-12-29 17:29:54
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
	% StartTime: 2019-12-29 17:29:54
	% EndTime: 2019-12-29 17:29:54
	% DurationCPUTime: 0.08s
	% Computational Cost: add. (3->3), mult. (10->6), div. (0->0), fcn. (10->4), ass. (0->5)
	t22 = qJD(1) * sin(qJ(1));
	t21 = qJD(1) * cos(qJ(1));
	t18 = cos(pkin(8));
	t17 = sin(pkin(8));
	t1 = [-t18 * t21, 0, 0, 0, 0; -t18 * t22, 0, 0, 0, 0; 0, 0, 0, 0, 0; t17 * t21, 0, 0, 0, 0; t17 * t22, 0, 0, 0, 0; 0, 0, 0, 0, 0; -t22, 0, 0, 0, 0; t21, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiRD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 17:29:54
	% EndTime: 2019-12-29 17:29:55
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (29->10), mult. (36->14), div. (0->0), fcn. (36->4), ass. (0->14)
	t43 = sin(qJ(1));
	t48 = qJD(1) * t43;
	t44 = cos(qJ(1));
	t47 = qJD(1) * t44;
	t46 = qJD(3) * t43;
	t45 = qJD(3) * t44;
	t42 = pkin(8) + qJ(3);
	t41 = cos(t42);
	t40 = sin(t42);
	t39 = t40 * t46 - t41 * t47;
	t38 = t40 * t47 + t41 * t46;
	t37 = t40 * t45 + t41 * t48;
	t36 = t40 * t48 - t41 * t45;
	t1 = [t39, 0, t36, 0, 0; -t37, 0, -t38, 0, 0; 0, 0, -qJD(3) * t40, 0, 0; t38, 0, t37, 0, 0; t36, 0, t39, 0, 0; 0, 0, -qJD(3) * t41, 0, 0; -t48, 0, 0, 0, 0; t47, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 17:29:57
	% EndTime: 2019-12-29 17:29:57
	% DurationCPUTime: 0.18s
	% Computational Cost: add. (101->28), mult. (173->57), div. (0->0), fcn. (173->6), ass. (0->31)
	t245 = cos(qJ(4));
	t246 = cos(qJ(1));
	t265 = t245 * t246;
	t244 = sin(qJ(1));
	t264 = qJD(1) * t244;
	t263 = qJD(1) * t246;
	t243 = sin(qJ(4));
	t262 = qJD(3) * t243;
	t261 = qJD(3) * t244;
	t260 = qJD(3) * t245;
	t259 = qJD(3) * t246;
	t258 = qJD(4) * t243;
	t257 = qJD(4) * t245;
	t256 = qJD(4) * t246;
	t242 = pkin(8) + qJ(3);
	t240 = sin(t242);
	t255 = t240 * t260;
	t254 = t240 * t261;
	t241 = cos(t242);
	t253 = t241 * t261;
	t252 = t240 * t259;
	t251 = t241 * t259;
	t250 = qJD(4) * t241 - qJD(1);
	t249 = qJD(1) * t241 - qJD(4);
	t248 = t250 * t243;
	t247 = t249 * t244 + t252;
	t239 = -t249 * t265 + (t248 + t255) * t244;
	t238 = t250 * t245 * t244 + (t249 * t246 - t254) * t243;
	t237 = t247 * t245 + t246 * t248;
	t236 = t247 * t243 - t250 * t265;
	t1 = [t239, 0, -t245 * t251 + (t243 * t256 + t245 * t264) * t240, t236, 0; -t237, 0, -t245 * t253 + (t244 * t258 - t245 * t263) * t240, -t238, 0; 0, 0, -t241 * t258 - t255, -t240 * t257 - t241 * t262, 0; t238, 0, t243 * t251 + (-t243 * t264 + t245 * t256) * t240, t237, 0; t236, 0, t243 * t253 + (t243 * t263 + t244 * t257) * t240, t239, 0; 0, 0, t240 * t262 - t241 * t257, t240 * t258 - t241 * t260, 0; -t240 * t263 - t253, 0, -t241 * t264 - t252, 0, 0; -t240 * t264 + t251, 0, t241 * t263 - t254, 0, 0; 0, 0, qJD(3) * t241, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 17:29:57
	% EndTime: 2019-12-29 17:29:57
	% DurationCPUTime: 0.29s
	% Computational Cost: add. (101->28), mult. (173->57), div. (0->0), fcn. (173->6), ass. (0->31)
	t268 = cos(qJ(4));
	t269 = cos(qJ(1));
	t288 = t268 * t269;
	t267 = sin(qJ(1));
	t287 = qJD(1) * t267;
	t286 = qJD(1) * t269;
	t266 = sin(qJ(4));
	t285 = qJD(3) * t266;
	t284 = qJD(3) * t267;
	t283 = qJD(3) * t268;
	t282 = qJD(3) * t269;
	t281 = qJD(4) * t266;
	t280 = qJD(4) * t268;
	t279 = qJD(4) * t269;
	t265 = pkin(8) + qJ(3);
	t263 = sin(t265);
	t278 = t263 * t283;
	t277 = t263 * t284;
	t264 = cos(t265);
	t276 = t264 * t284;
	t275 = t263 * t282;
	t274 = t264 * t282;
	t273 = qJD(4) * t264 - qJD(1);
	t272 = qJD(1) * t264 - qJD(4);
	t271 = t273 * t266;
	t270 = t272 * t267 + t275;
	t262 = -t272 * t288 + (t271 + t278) * t267;
	t261 = t273 * t268 * t267 + (t272 * t269 - t277) * t266;
	t260 = t270 * t268 + t269 * t271;
	t259 = t270 * t266 - t273 * t288;
	t1 = [t262, 0, -t268 * t274 + (t266 * t279 + t268 * t287) * t263, t259, 0; -t260, 0, -t268 * t276 + (t267 * t281 - t268 * t286) * t263, -t261, 0; 0, 0, -t264 * t281 - t278, -t263 * t280 - t264 * t285, 0; t261, 0, t266 * t274 + (-t266 * t287 + t268 * t279) * t263, t260, 0; t259, 0, t266 * t276 + (t266 * t286 + t267 * t280) * t263, t262, 0; 0, 0, t263 * t285 - t264 * t280, t263 * t281 - t264 * t283, 0; -t263 * t286 - t276, 0, -t264 * t287 - t275, 0, 0; -t263 * t287 + t274, 0, t264 * t286 - t277, 0, 0; 0, 0, qJD(3) * t264, 0, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,5);
end