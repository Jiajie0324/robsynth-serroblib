% Zeitableitung der analytischen Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S5RPRRR12
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% (Ist für translatorischen Teil egal, kennzeichnet nur den Rechenweg der Herleitung)
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt (0=Basis).
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d4,d5]';
% 
% Output:
% JaD_transl [3x5]
%   Translatorischer Teil der analytischen Jacobi-Matrix (Zeitableitung)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 18:00
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_transl = S5RPRRR12_jacobiaD_transl_sym_varpar(qJ, qJD, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR12_jacobiaD_transl_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRR12_jacobiaD_transl_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S5RPRRR12_jacobiaD_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5RPRRR12_jacobiaD_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRR12_jacobiaD_transl_sym_varpar: pkin has to be [8x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 18:00:09
	% EndTime: 2019-12-29 18:00:09
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 18:00:09
	% EndTime: 2019-12-29 18:00:09
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (2->2), mult. (8->6), div. (0->0), fcn. (4->2), ass. (0->3)
	t27 = cos(qJ(1));
	t26 = sin(qJ(1));
	t1 = [(-r_i_i_C(1) * t27 + r_i_i_C(2) * t26) * qJD(1), 0, 0, 0, 0; (-r_i_i_C(1) * t26 - r_i_i_C(2) * t27) * qJD(1), 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 18:00:04
	% EndTime: 2019-12-29 18:00:04
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (8->6), mult. (20->10), div. (0->0), fcn. (12->2), ass. (0->5)
	t10 = -pkin(1) + r_i_i_C(2);
	t9 = r_i_i_C(3) + qJ(2);
	t8 = cos(qJ(1));
	t7 = sin(qJ(1));
	t1 = [t8 * qJD(2) + (t10 * t8 - t9 * t7) * qJD(1), qJD(1) * t8, 0, 0, 0; t7 * qJD(2) + (t10 * t7 + t9 * t8) * qJD(1), qJD(1) * t7, 0, 0, 0; 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 18:00:04
	% EndTime: 2019-12-29 18:00:04
	% DurationCPUTime: 0.15s
	% Computational Cost: add. (23->16), mult. (72->29), div. (0->0), fcn. (46->4), ass. (0->13)
	t17 = sin(qJ(3));
	t19 = cos(qJ(3));
	t29 = (r_i_i_C(1) * t19 - r_i_i_C(2) * t17) * qJD(3);
	t18 = sin(qJ(1));
	t28 = qJD(1) * t18;
	t20 = cos(qJ(1));
	t27 = qJD(1) * t20;
	t26 = qJD(3) * t18;
	t25 = qJD(3) * t20;
	t24 = -pkin(1) - pkin(6) - r_i_i_C(3);
	t22 = r_i_i_C(1) * t17 + r_i_i_C(2) * t19 + qJ(2);
	t21 = qJD(2) + t29;
	t1 = [t21 * t20 + (-t18 * t22 + t20 * t24) * qJD(1), t27, (-t17 * t27 - t19 * t26) * r_i_i_C(2) + (-t17 * t26 + t19 * t27) * r_i_i_C(1), 0, 0; t21 * t18 + (t18 * t24 + t20 * t22) * qJD(1), t28, (-t17 * t28 + t19 * t25) * r_i_i_C(2) + (t17 * t25 + t19 * t28) * r_i_i_C(1), 0, 0; 0, 0, -t29, 0, 0;];
	JaD_transl = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 18:00:04
	% EndTime: 2019-12-29 18:00:04
	% DurationCPUTime: 0.20s
	% Computational Cost: add. (85->27), mult. (126->41), div. (0->0), fcn. (81->6), ass. (0->27)
	t43 = cos(qJ(3));
	t62 = pkin(3) * t43;
	t40 = qJ(3) + qJ(4);
	t38 = cos(t40);
	t61 = r_i_i_C(1) * t38;
	t37 = sin(t40);
	t60 = r_i_i_C(2) * t37;
	t39 = qJD(3) + qJD(4);
	t59 = t37 * t39;
	t58 = t38 * t39;
	t42 = sin(qJ(1));
	t57 = qJD(1) * t42;
	t44 = cos(qJ(1));
	t56 = qJD(1) * t44;
	t41 = sin(qJ(3));
	t55 = qJD(3) * t41;
	t54 = -pkin(1) - r_i_i_C(3) - pkin(7) - pkin(6);
	t53 = r_i_i_C(1) * t59;
	t52 = qJD(1) * t61;
	t51 = qJD(3) * t62;
	t50 = -r_i_i_C(1) * t58 + r_i_i_C(2) * t59;
	t49 = -r_i_i_C(1) * t37 - r_i_i_C(2) * t38;
	t48 = t42 * t52 - t57 * t60 + (t58 * r_i_i_C(2) + t53) * t44;
	t47 = pkin(3) * t41 + qJ(2) - t49;
	t46 = t51 + qJD(2) + (-t60 + t61) * t39;
	t35 = t44 * t52;
	t1 = [t46 * t44 + (-t47 * t42 + t54 * t44) * qJD(1), t56, t35 + (-t60 + t62) * t56 + (-pkin(3) * t55 + t49 * t39) * t42, -t42 * t53 + t35 + (-t37 * t56 - t42 * t58) * r_i_i_C(2), 0; t46 * t42 + (t54 * t42 + t47 * t44) * qJD(1), t57, (t43 * t57 + t44 * t55) * pkin(3) + t48, t48, 0; 0, 0, t50 - t51, t50, 0;];
	JaD_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-29 18:00:11
	% EndTime: 2019-12-29 18:00:11
	% DurationCPUTime: 0.48s
	% Computational Cost: add. (274->62), mult. (406->96), div. (0->0), fcn. (305->8), ass. (0->56)
	t302 = pkin(8) + r_i_i_C(3);
	t258 = cos(qJ(5));
	t299 = r_i_i_C(1) * t258;
	t308 = pkin(4) + t299;
	t256 = sin(qJ(3));
	t254 = qJ(3) + qJ(4);
	t252 = cos(t254);
	t285 = t302 * t252;
	t251 = sin(t254);
	t301 = pkin(4) * t251;
	t306 = -pkin(3) * t256 - qJ(2) + t285 - t301;
	t260 = cos(qJ(1));
	t271 = qJD(1) * t251 + qJD(5);
	t305 = t271 * t260;
	t304 = t302 * t251;
	t257 = sin(qJ(1));
	t253 = qJD(3) + qJD(4);
	t293 = t253 * t260;
	t303 = -t252 * t293 + t271 * t257;
	t300 = pkin(4) * t252;
	t255 = sin(qJ(5));
	t298 = r_i_i_C(2) * t255;
	t297 = -pkin(1) - pkin(7) - pkin(6);
	t296 = pkin(3) * qJD(3);
	t295 = t251 * t255;
	t294 = t253 * t258;
	t292 = qJD(1) * t257;
	t291 = qJD(1) * t260;
	t290 = qJD(5) * t255;
	t289 = qJD(5) * t258;
	t288 = t252 * t298;
	t287 = t256 * t296;
	t259 = cos(qJ(3));
	t286 = t259 * t296;
	t284 = t253 * t295;
	t282 = t252 * t253 * t257;
	t278 = t252 * t291;
	t277 = t252 * t290;
	t276 = t252 * t289;
	t275 = r_i_i_C(2) * t284;
	t274 = qJD(1) * t252 * t299;
	t273 = r_i_i_C(2) * t276;
	t272 = -qJD(5) * t251 - qJD(1);
	t270 = t272 * t260;
	t268 = pkin(4) * t278 + t257 * t275 + t260 * t274 + t302 * (t251 * t291 + t282);
	t267 = qJD(1) * (pkin(3) * t259 - t288);
	t266 = t251 * t294 + t277;
	t265 = t257 * t274 + t292 * t300 + (r_i_i_C(1) * t277 + t273) * t260 + (t302 * t292 + t308 * t293) * t251;
	t264 = t286 + qJD(2) + (t300 + t304) * t253;
	t263 = (-t308 * t252 + t288 - t304) * t253 + (r_i_i_C(1) * t290 + r_i_i_C(2) * t289) * t251;
	t262 = -t266 * r_i_i_C(1) - t253 * t301 - t273;
	t232 = t258 * t305 + (t252 * t294 + t272 * t255) * t257;
	t231 = t272 * t258 * t257 + (-t282 - t305) * t255;
	t230 = t255 * t270 - t303 * t258;
	t229 = t303 * t255 + t258 * t270;
	t1 = [t230 * r_i_i_C(1) + t229 * r_i_i_C(2) + t264 * t260 + (t306 * t257 + t297 * t260) * qJD(1), t291, t260 * t267 + (t262 - t287) * t257 + t268, t262 * t257 - t278 * t298 + t268, t231 * r_i_i_C(1) - t232 * r_i_i_C(2); t232 * r_i_i_C(1) + t231 * r_i_i_C(2) + t264 * t257 + (t297 * t257 - t306 * t260) * qJD(1), t292, t257 * t267 + (t287 + (-r_i_i_C(2) * t295 - t285) * t253) * t260 + t265, -t260 * t275 + (-t292 * t298 - t302 * t293) * t252 + t265, -t229 * r_i_i_C(1) + t230 * r_i_i_C(2); 0, 0, t263 - t286, t263, t266 * r_i_i_C(2) + (-t276 + t284) * r_i_i_C(1);];
	JaD_transl = t1;
else
	JaD_transl=NaN(3,5);
end