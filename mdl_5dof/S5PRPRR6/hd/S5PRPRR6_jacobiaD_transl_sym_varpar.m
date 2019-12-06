% Zeitableitung der analytischen Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S5PRPRR6
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d2,d4,d5,theta1,theta3]';
% 
% Output:
% JaD_transl [3x5]
%   Translatorischer Teil der analytischen Jacobi-Matrix (Zeitableitung)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:58
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_transl = S5PRPRR6_jacobiaD_transl_sym_varpar(qJ, qJD, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),uint8(0),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRR6_jacobiaD_transl_sym_varpar: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRPRR6_jacobiaD_transl_sym_varpar: qJD has to be [5x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S5PRPRR6_jacobiaD_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S5PRPRR6_jacobiaD_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S5PRPRR6_jacobiaD_transl_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 15:58:40
	% EndTime: 2019-12-05 15:58:40
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 15:58:40
	% EndTime: 2019-12-05 15:58:40
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 15:58:40
	% EndTime: 2019-12-05 15:58:40
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (7->7), mult. (30->20), div. (0->0), fcn. (24->6), ass. (0->8)
	t53 = cos(pkin(5));
	t54 = sin(qJ(2));
	t57 = t53 * t54;
	t55 = cos(qJ(2));
	t56 = t53 * t55;
	t52 = cos(pkin(9));
	t50 = sin(pkin(9));
	t1 = [0, ((t50 * t57 - t52 * t55) * r_i_i_C(1) + (t50 * t56 + t52 * t54) * r_i_i_C(2)) * qJD(2), 0, 0, 0; 0, ((-t50 * t55 - t52 * t57) * r_i_i_C(1) + (t50 * t54 - t52 * t56) * r_i_i_C(2)) * qJD(2), 0, 0, 0; 0, (-r_i_i_C(1) * t54 - r_i_i_C(2) * t55) * sin(pkin(5)) * qJD(2), 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 15:58:40
	% EndTime: 2019-12-05 15:58:40
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (29->14), mult. (103->28), div. (0->0), fcn. (90->8), ass. (0->16)
	t153 = sin(pkin(9));
	t156 = cos(pkin(9));
	t159 = cos(qJ(2));
	t157 = cos(pkin(5));
	t158 = sin(qJ(2));
	t165 = t157 * t158;
	t168 = t153 * t165 - t156 * t159;
	t167 = r_i_i_C(3) + qJ(3);
	t164 = t157 * t159;
	t162 = qJD(2) * t167;
	t161 = -cos(pkin(10)) * r_i_i_C(1) + sin(pkin(10)) * r_i_i_C(2) - pkin(2);
	t160 = t153 * t159 + t156 * t165;
	t154 = sin(pkin(5));
	t150 = t168 * qJD(2);
	t148 = t160 * qJD(2);
	t1 = [0, -t168 * qJD(3) - (t153 * t164 + t156 * t158) * t162 - t161 * t150, -t150, 0, 0; 0, t160 * qJD(3) - (t153 * t158 - t156 * t164) * t162 + t161 * t148, t148, 0, 0; 0, (qJD(3) * t158 + (t161 * t158 + t167 * t159) * qJD(2)) * t154, t154 * qJD(2) * t158, 0, 0;];
	JaD_transl = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 15:58:41
	% EndTime: 2019-12-05 15:58:41
	% DurationCPUTime: 0.13s
	% Computational Cost: add. (98->33), mult. (216->67), div. (0->0), fcn. (199->9), ass. (0->30)
	t212 = r_i_i_C(3) + pkin(7) + qJ(3);
	t192 = sin(pkin(9));
	t193 = sin(pkin(5));
	t211 = t192 * t193;
	t194 = cos(pkin(9));
	t210 = t193 * t194;
	t197 = sin(qJ(2));
	t209 = t193 * t197;
	t195 = cos(pkin(5));
	t208 = t195 * t197;
	t198 = cos(qJ(2));
	t207 = t195 * t198;
	t206 = qJD(2) * t197;
	t205 = qJD(2) * t198;
	t204 = t192 * t206;
	t203 = t194 * t205;
	t191 = pkin(10) + qJ(4);
	t189 = sin(t191);
	t190 = cos(t191);
	t202 = r_i_i_C(1) * t189 + r_i_i_C(2) * t190;
	t201 = -r_i_i_C(1) * t190 + r_i_i_C(2) * t189 - cos(pkin(10)) * pkin(3) - pkin(2);
	t183 = t192 * t198 + t194 * t208;
	t200 = t192 * t207 + t194 * t197;
	t199 = qJD(4) * t202;
	t185 = -t192 * t208 + t194 * t198;
	t181 = -t195 * t204 + t203;
	t180 = t200 * qJD(2);
	t179 = t183 * qJD(2);
	t178 = -t195 * t203 + t204;
	t1 = [0, t185 * qJD(3) - t212 * t180 + t201 * t181 + t200 * t199, t181, t202 * t180 + ((-t185 * t190 - t189 * t211) * r_i_i_C(1) + (t185 * t189 - t190 * t211) * r_i_i_C(2)) * qJD(4), 0; 0, t183 * qJD(3) - t212 * t178 - (-t192 * t197 + t194 * t207) * t199 + t201 * t179, t179, t202 * t178 + ((-t183 * t190 + t189 * t210) * r_i_i_C(1) + (t183 * t189 + t190 * t210) * r_i_i_C(2)) * qJD(4), 0; 0, (qJD(3) * t197 - t198 * t199 + (t201 * t197 + t212 * t198) * qJD(2)) * t193, t193 * t206, -t202 * t193 * t205 + ((-t189 * t195 - t190 * t209) * r_i_i_C(1) + (t189 * t209 - t190 * t195) * r_i_i_C(2)) * qJD(4), 0;];
	JaD_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-12-05 15:58:41
	% EndTime: 2019-12-05 15:58:42
	% DurationCPUTime: 0.36s
	% Computational Cost: add. (360->76), mult. (750->138), div. (0->0), fcn. (751->11), ass. (0->53)
	t302 = pkin(10) + qJ(4);
	t300 = sin(t302);
	t301 = cos(t302);
	t307 = sin(qJ(5));
	t309 = cos(qJ(5));
	t320 = t309 * r_i_i_C(1) - t307 * r_i_i_C(2);
	t318 = pkin(4) + t320;
	t340 = pkin(8) + r_i_i_C(3);
	t342 = (t318 * t300 - t340 * t301) * qJD(4);
	t319 = t307 * r_i_i_C(1) + t309 * r_i_i_C(2);
	t337 = cos(pkin(5));
	t303 = sin(pkin(9));
	t304 = sin(pkin(5));
	t336 = t303 * t304;
	t305 = cos(pkin(9));
	t335 = t304 * t305;
	t308 = sin(qJ(2));
	t334 = t304 * t308;
	t310 = cos(qJ(2));
	t333 = t304 * t310;
	t332 = qJD(2) * t308;
	t331 = qJD(2) * t310;
	t330 = qJD(5) * t301;
	t329 = qJD(5) * t307;
	t328 = qJD(5) * t309;
	t327 = t304 * t331;
	t326 = t304 * t332;
	t325 = t308 * t337;
	t324 = t310 * t337;
	t322 = t303 * t325;
	t321 = t305 * t324;
	t293 = t303 * t310 + t305 * t325;
	t317 = -t293 * t300 - t301 * t335;
	t316 = -t293 * t301 + t300 * t335;
	t295 = t305 * t310 - t322;
	t315 = -t295 * t300 + t301 * t336;
	t285 = t295 * t301 + t300 * t336;
	t314 = qJD(5) * t319;
	t294 = t303 * t324 + t305 * t308;
	t313 = -t300 * t334 + t337 * t301;
	t287 = t337 * t300 + t301 * t334;
	t312 = -t340 * t300 - t318 * t301 - cos(pkin(10)) * pkin(3) - pkin(2);
	t311 = t319 * t330 + t342;
	t306 = -pkin(7) - qJ(3);
	t292 = t303 * t308 - t321;
	t291 = -qJD(2) * t322 + t305 * t331;
	t290 = t294 * qJD(2);
	t289 = t293 * qJD(2);
	t288 = -qJD(2) * t321 + t303 * t332;
	t281 = t313 * qJD(4) + t301 * t327;
	t279 = t315 * qJD(4) - t290 * t301;
	t277 = t317 * qJD(4) - t288 * t301;
	t1 = [0, (-t290 * t307 + t295 * t328) * r_i_i_C(1) + (-t290 * t309 - t295 * t329) * r_i_i_C(2) + t290 * t306 + t295 * qJD(3) + t312 * t291 + t311 * t294, t291, t340 * t279 - t315 * t314 + t318 * (-t285 * qJD(4) + t290 * t300), (-t279 * t307 + t291 * t309) * r_i_i_C(1) + (-t279 * t309 - t291 * t307) * r_i_i_C(2) + ((-t285 * t309 - t294 * t307) * r_i_i_C(1) + (t285 * t307 - t294 * t309) * r_i_i_C(2)) * qJD(5); 0, (-t288 * t307 + t293 * t328) * r_i_i_C(1) + (-t288 * t309 - t293 * t329) * r_i_i_C(2) + t288 * t306 + t293 * qJD(3) + t312 * t289 + t311 * t292, t289, t340 * t277 - t317 * t314 + t318 * (t316 * qJD(4) + t288 * t300), (-t277 * t307 + t289 * t309) * r_i_i_C(1) + (-t277 * t309 - t289 * t307) * r_i_i_C(2) + ((-t292 * t307 + t309 * t316) * r_i_i_C(1) + (-t292 * t309 - t307 * t316) * r_i_i_C(2)) * qJD(5); 0, ((t312 * qJD(2) + t320 * qJD(5) + qJD(3)) * t308 + (-qJD(2) * t306 - t342 + t319 * (qJD(2) - t330)) * t310) * t304, t326, t340 * t281 - t313 * t314 + t318 * (-t287 * qJD(4) - t300 * t327), (-t281 * t307 + t309 * t326) * r_i_i_C(1) + (-t281 * t309 - t307 * t326) * r_i_i_C(2) + ((-t287 * t309 + t307 * t333) * r_i_i_C(1) + (t287 * t307 + t309 * t333) * r_i_i_C(2)) * qJD(5);];
	JaD_transl = t1;
else
	JaD_transl=NaN(3,5);
end