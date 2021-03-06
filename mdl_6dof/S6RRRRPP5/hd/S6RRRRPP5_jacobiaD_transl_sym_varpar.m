% Zeitableitung der analytischen Jacobi-Matrix (Translatorisch) für beliebiges Segment von
% S6RRRRPP5
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% (Ist für translatorischen Teil egal, kennzeichnet nur den Rechenweg der Herleitung)
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt (0=Basis).
% r_i_i_C [3x1]
%   Ortsvektor vom KörperKS-Ursprung zum gesuchten Punkt
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4]';
% 
% Output:
% JaD_transl [3x6]
%   Translatorischer Teil der analytischen Jacobi-Matrix (Zeitableitung)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 12:27
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_transl = S6RRRRPP5_jacobiaD_transl_sym_varpar(qJ, qJD, link_index, r_i_i_C, ...
  pkin)


%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP5_jacobiaD_transl_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP5_jacobiaD_transl_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(r_i_i_C,'double') && isreal(r_i_i_C) && all(size(r_i_i_C) == [3 1]), ...
	'S6RRRRPP5_jacobiaD_transl_sym_varpar: Position vector r_i_i_C has to be [3x1] double');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRRPP5_jacobiaD_transl_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRRRPP5_jacobiaD_transl_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_transl_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:27:32
	% EndTime: 2019-10-10 12:27:32
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_transl_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:27:32
	% EndTime: 2019-10-10 12:27:32
	% DurationCPUTime: 0.02s
	% Computational Cost: add. (2->2), mult. (8->6), div. (0->0), fcn. (4->2), ass. (0->3)
	t27 = cos(qJ(1));
	t26 = sin(qJ(1));
	t1 = [(-r_i_i_C(1) * t27 + r_i_i_C(2) * t26) * qJD(1), 0, 0, 0, 0, 0; (-r_i_i_C(1) * t26 - r_i_i_C(2) * t27) * qJD(1), 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_transl_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:27:32
	% EndTime: 2019-10-10 12:27:32
	% DurationCPUTime: 0.09s
	% Computational Cost: add. (19->15), mult. (64->29), div. (0->0), fcn. (40->4), ass. (0->13)
	t28 = pkin(7) + r_i_i_C(3);
	t18 = sin(qJ(1));
	t27 = qJD(1) * t18;
	t20 = cos(qJ(1));
	t26 = qJD(1) * t20;
	t25 = qJD(2) * t18;
	t24 = qJD(2) * t20;
	t17 = sin(qJ(2));
	t19 = cos(qJ(2));
	t23 = r_i_i_C(1) * t17 + r_i_i_C(2) * t19;
	t22 = -r_i_i_C(1) * t19 + r_i_i_C(2) * t17 - pkin(1);
	t21 = t23 * qJD(2);
	t1 = [t23 * t25 + (-t28 * t18 + t22 * t20) * qJD(1), (t17 * t24 + t19 * t27) * r_i_i_C(2) + (t17 * t27 - t19 * t24) * r_i_i_C(1), 0, 0, 0, 0; -t20 * t21 + (t22 * t18 + t28 * t20) * qJD(1), (t17 * t25 - t19 * t26) * r_i_i_C(2) + (-t17 * t26 - t19 * t25) * r_i_i_C(1), 0, 0, 0, 0; 0, -t21, 0, 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_transl_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:27:33
	% EndTime: 2019-10-10 12:27:33
	% DurationCPUTime: 0.20s
	% Computational Cost: add. (83->38), mult. (270->73), div. (0->0), fcn. (211->6), ass. (0->31)
	t199 = sin(qJ(2));
	t202 = cos(qJ(2));
	t223 = pkin(8) + r_i_i_C(3);
	t213 = t223 * t202;
	t224 = -pkin(2) * t199 + t213;
	t201 = cos(qJ(3));
	t203 = cos(qJ(1));
	t221 = t201 * t203;
	t200 = sin(qJ(1));
	t220 = qJD(1) * t200;
	t219 = qJD(1) * t203;
	t218 = qJD(2) * t200;
	t217 = qJD(2) * t202;
	t216 = qJD(2) * t203;
	t215 = qJD(3) * t199;
	t214 = qJD(3) * t202;
	t212 = -qJD(1) + t214;
	t211 = qJD(1) * t202 - qJD(3);
	t198 = sin(qJ(3));
	t210 = r_i_i_C(1) * t198 + r_i_i_C(2) * t201;
	t209 = r_i_i_C(1) * t201 - r_i_i_C(2) * t198 + pkin(2);
	t208 = t212 * t198;
	t207 = -pkin(2) * t202 - t223 * t199 - pkin(1);
	t206 = qJD(2) * t209;
	t205 = t199 * t216 + t211 * t200;
	t204 = -t223 * qJD(2) + t210 * qJD(3);
	t197 = -t211 * t221 + (qJD(2) * t199 * t201 + t208) * t200;
	t196 = t212 * t201 * t200 + (-t199 * t218 + t211 * t203) * t198;
	t195 = t205 * t201 + t203 * t208;
	t194 = t205 * t198 - t212 * t221;
	t1 = [t197 * r_i_i_C(1) + t196 * r_i_i_C(2) - t224 * t218 + (-pkin(7) * t200 + t207 * t203) * qJD(1), (-t203 * t206 - t223 * t220) * t202 + (t204 * t203 + t209 * t220) * t199, t194 * r_i_i_C(1) + t195 * r_i_i_C(2), 0, 0, 0; -t195 * r_i_i_C(1) + t194 * r_i_i_C(2) + t224 * t216 + (pkin(7) * t203 + t207 * t200) * qJD(1), (-t200 * t206 + t223 * t219) * t202 + (t204 * t200 - t209 * t219) * t199, -t196 * r_i_i_C(1) + t197 * r_i_i_C(2), 0, 0, 0; 0, -t210 * t214 + (-t209 * t199 + t213) * qJD(2), (t198 * t215 - t201 * t217) * r_i_i_C(2) + (-t198 * t217 - t201 * t215) * r_i_i_C(1), 0, 0, 0;];
	JaD_transl = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_transl_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:27:33
	% EndTime: 2019-10-10 12:27:34
	% DurationCPUTime: 0.33s
	% Computational Cost: add. (261->56), mult. (420->90), div. (0->0), fcn. (332->8), ass. (0->52)
	t235 = cos(qJ(3));
	t227 = t235 * pkin(3) + pkin(2);
	t233 = sin(qJ(2));
	t236 = cos(qJ(2));
	t267 = r_i_i_C(3) + pkin(9) + pkin(8);
	t251 = t267 * t236;
	t232 = sin(qJ(3));
	t266 = pkin(3) * qJD(3);
	t256 = t232 * t266;
	t276 = (-t227 * t233 + t251) * qJD(2) - t236 * t256;
	t237 = cos(qJ(1));
	t230 = qJD(3) + qJD(4);
	t250 = t230 * t236 - qJD(1);
	t274 = t237 * t250;
	t231 = qJ(3) + qJ(4);
	t228 = sin(t231);
	t229 = cos(t231);
	t268 = r_i_i_C(2) * t229;
	t246 = r_i_i_C(1) * t228 + t268;
	t273 = -t246 * t230 - t256;
	t260 = qJD(1) * t236;
	t249 = -t230 + t260;
	t234 = sin(qJ(1));
	t258 = qJD(2) * t233;
	t253 = t234 * t258;
	t272 = t249 * t237 - t253;
	t271 = pkin(3) * t232;
	t270 = r_i_i_C(1) * t229;
	t269 = r_i_i_C(2) * t228;
	t264 = t230 * t233;
	t252 = t237 * t258;
	t240 = t249 * t234 + t252;
	t222 = t240 * t228 - t229 * t274;
	t223 = t228 * t274 + t240 * t229;
	t263 = t222 * r_i_i_C(1) + t223 * r_i_i_C(2);
	t245 = t250 * t234;
	t224 = t272 * t228 + t229 * t245;
	t225 = t228 * t245 - t272 * t229;
	t262 = -t224 * r_i_i_C(1) + t225 * r_i_i_C(2);
	t261 = qJD(1) * t234;
	t259 = qJD(1) * t237;
	t257 = qJD(2) * t236;
	t255 = t235 * t266;
	t254 = pkin(7) + t271;
	t247 = -qJD(3) + t260;
	t244 = (-qJD(3) * t236 + qJD(1)) * t235;
	t243 = t227 - t269 + t270;
	t242 = -t227 * t236 - t267 * t233 - pkin(1);
	t241 = qJD(2) * t243;
	t239 = -t267 * qJD(2) - t273;
	t226 = t264 * t269;
	t1 = [t237 * t255 + t225 * r_i_i_C(1) + t224 * r_i_i_C(2) - t276 * t234 + (-t254 * t234 + t242 * t237) * qJD(1), (-t237 * t241 - t267 * t261) * t236 + (t239 * t237 + t243 * t261) * t233, (t237 * t244 + (t247 * t234 + t252) * t232) * pkin(3) + t263, t263, 0, 0; t234 * t255 - t223 * r_i_i_C(1) + t222 * r_i_i_C(2) + t276 * t237 + (t242 * t234 + t254 * t237) * qJD(1), (-t234 * t241 + t267 * t259) * t236 + (t239 * t234 - t243 * t259) * t233, (t234 * t244 + (-t247 * t237 + t253) * t232) * pkin(3) + t262, t262, 0, 0; 0, t273 * t236 + (-t243 * t233 + t251) * qJD(2), t226 + (-t230 * t270 - t255) * t233 + (-t246 - t271) * t257, -t257 * t268 + t226 + (-t228 * t257 - t229 * t264) * r_i_i_C(1), 0, 0;];
	JaD_transl = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_transl_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:27:34
	% EndTime: 2019-10-10 12:27:34
	% DurationCPUTime: 0.44s
	% Computational Cost: add. (523->70), mult. (738->104), div. (0->0), fcn. (620->8), ass. (0->55)
	t298 = qJ(3) + qJ(4);
	t296 = cos(t298);
	t345 = r_i_i_C(3) + qJ(5);
	t353 = t345 * t296;
	t297 = qJD(3) + qJD(4);
	t295 = sin(t298);
	t299 = sin(qJ(3));
	t344 = pkin(3) * qJD(3);
	t346 = r_i_i_C(2) + pkin(9) + pkin(8);
	t308 = t346 * qJD(2) + qJD(5) * t295 - t299 * t344;
	t348 = pkin(4) + r_i_i_C(1);
	t331 = t348 * t295;
	t306 = (t331 - t353) * t297 - t308;
	t302 = cos(qJ(3));
	t294 = t302 * pkin(3) + pkin(2);
	t303 = cos(qJ(2));
	t300 = sin(qJ(2));
	t335 = qJD(2) * t300;
	t352 = -t294 * t335 + t308 * t303;
	t313 = -t345 * t295 - t348 * t296;
	t310 = -t294 + t313;
	t301 = sin(qJ(1));
	t304 = cos(qJ(1));
	t339 = t304 * t296;
	t316 = t301 * t295 + t303 * t339;
	t341 = t301 * t303;
	t349 = t295 * t341 + t339;
	t347 = pkin(3) * t299;
	t343 = t297 * t300;
	t340 = t304 * t295;
	t338 = qJD(1) * t301;
	t337 = qJD(1) * t303;
	t336 = qJD(1) * t304;
	t334 = qJD(2) * t303;
	t333 = t296 * qJD(5);
	t332 = t302 * t344;
	t330 = t296 * t343;
	t328 = t297 * t340;
	t326 = t300 * t333 + t334 * t353;
	t325 = pkin(7) + t347;
	t322 = t301 * t335;
	t321 = t304 * t335;
	t320 = -qJD(3) + t337;
	t319 = (-qJD(3) * t303 + qJD(1)) * t302;
	t317 = t332 - t333;
	t315 = -t294 * t303 - t346 * t300 - pkin(1);
	t314 = t301 * t297 * t296 + t295 * t336;
	t275 = t349 * qJD(1) + t295 * t321 - t316 * t297;
	t276 = t303 * t328 + (t301 * t337 + t321) * t296 - t314;
	t312 = qJD(5) * t316 + t348 * t275 - t345 * t276;
	t277 = -t295 * t322 - t296 * t338 + t314 * t303 - t328;
	t278 = t316 * qJD(1) - t296 * t322 - t349 * t297;
	t311 = -(-t296 * t341 + t340) * qJD(5) + t345 * t278 - t348 * t277;
	t309 = qJD(2) * t310;
	t1 = [t317 * t304 - t348 * t278 - t345 * t277 - t352 * t301 + (-t325 * t301 + t315 * t304) * qJD(1), (t304 * t309 - t346 * t338) * t303 + (t306 * t304 - t310 * t338) * t300, (t304 * t319 + (t320 * t301 + t321) * t299) * pkin(3) + t312, t312, -t275, 0; t317 * t301 - t348 * t276 - t345 * t275 + t352 * t304 + (t315 * t301 + t325 * t304) * qJD(1), (t301 * t309 + t346 * t336) * t303 + (t306 * t301 + t310 * t336) * t300, (t301 * t319 + (-t320 * t304 + t322) * t299) * pkin(3) + t311, t311, t277, 0; 0, t300 * t309 - t306 * t303, (-t331 - t347) * t334 + (t313 * t297 - t332) * t300 + t326, -t348 * t330 + (-t348 * t334 - t345 * t343) * t295 + t326, t295 * t334 + t330, 0;];
	JaD_transl = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiaD_transl_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 12:27:33
	% EndTime: 2019-10-10 12:27:34
	% DurationCPUTime: 0.56s
	% Computational Cost: add. (641->71), mult. (908->102), div. (0->0), fcn. (763->8), ass. (0->56)
	t268 = qJ(3) + qJ(4);
	t266 = cos(t268);
	t317 = r_i_i_C(2) + qJ(5);
	t329 = t317 * t266;
	t270 = sin(qJ(2));
	t273 = cos(qJ(2));
	t272 = cos(qJ(3));
	t264 = t272 * pkin(3) + pkin(2);
	t265 = sin(t268);
	t303 = pkin(4) + pkin(5) + r_i_i_C(1);
	t291 = t303 * t266;
	t284 = -t317 * t265 - t291;
	t283 = -t264 + t284;
	t302 = r_i_i_C(3) + qJ(6) - pkin(9) - pkin(8);
	t328 = -t283 * t270 + t302 * t273;
	t267 = qJD(3) + qJD(4);
	t269 = sin(qJ(3));
	t316 = pkin(3) * qJD(3);
	t279 = t302 * qJD(2) - qJD(5) * t265 + t269 * t316;
	t292 = t303 * t265;
	t327 = (t292 - t329) * t267 + t279;
	t318 = pkin(3) * t269;
	t326 = t279 * t273 - (pkin(7) + t318) * qJD(1) + (qJD(2) * t264 + qJD(6)) * t270;
	t271 = sin(qJ(1));
	t274 = cos(qJ(1));
	t311 = t274 * t266;
	t286 = t271 * t265 + t273 * t311;
	t313 = t271 * t273;
	t320 = t265 * t313 + t311;
	t315 = t267 * t270;
	t312 = t274 * t265;
	t310 = qJD(1) * t271;
	t309 = qJD(1) * t273;
	t308 = qJD(1) * t274;
	t307 = qJD(2) * t270;
	t306 = qJD(2) * t273;
	t305 = qJD(2) * t274;
	t304 = t266 * qJD(5);
	t301 = t272 * t316;
	t299 = t267 * t312;
	t297 = t270 * t304 + t306 * t329;
	t294 = t271 * t307;
	t293 = t270 * t305;
	t290 = -qJD(3) + t309;
	t288 = (-qJD(3) * t273 + qJD(1)) * t272;
	t285 = t271 * t267 * t266 + t265 * t308;
	t245 = t320 * qJD(1) + t265 * t293 - t286 * t267;
	t246 = t273 * t299 + (t271 * t309 + t293) * t266 - t285;
	t282 = qJD(5) * t286 + t303 * t245 - t317 * t246;
	t247 = -t265 * t294 - t266 * t310 + t285 * t273 - t299;
	t248 = t286 * qJD(1) - t266 * t294 - t320 * t267;
	t281 = -(-t266 * t313 + t312) * qJD(5) + t317 * t248 - t303 * t247;
	t278 = t283 * qJD(2) - qJD(6);
	t277 = t301 - t304 + (-t264 * t273 + t302 * t270 - pkin(1)) * qJD(1);
	t276 = t327 * t270 + t278 * t273;
	t1 = [-t317 * t247 - t303 * t248 + t326 * t271 + t277 * t274, t276 * t274 + t328 * t310, (t274 * t288 + (t290 * t271 + t293) * t269) * pkin(3) + t282, t282, -t245, t270 * t310 - t273 * t305; -t317 * t245 - t303 * t246 + t277 * t271 - t326 * t274, t276 * t271 - t328 * t308, (t271 * t288 + (-t290 * t274 + t294) * t269) * pkin(3) + t281, t281, t247, -t270 * t308 - t271 * t306; 0, t278 * t270 - t327 * t273, (-t292 - t318) * t306 + (t284 * t267 - t301) * t270 + t297, -t291 * t315 + (-t303 * t306 - t317 * t315) * t265 + t297, t265 * t306 + t266 * t315, -t307;];
	JaD_transl = t1;
else
	JaD_transl=NaN(3,6);
end