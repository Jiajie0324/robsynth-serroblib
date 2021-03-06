% Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S6RRRRRR9
% Use Code from Maple symbolic Code Generation
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% Zeitableitung der Winkeldarstellung des Endeffektors in Basis-Koordinaten
% 
% Winkeldarstellung: Euler-XYZ-Winkel, rotx(alpha)*roty(beta)*rotz(gamma)
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt.
%   Wie in S6RRRRRR9_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d2,d3,d4,d5,d6]';
% 
% Output:
% JaD_rot [3x6]
%   Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 13:32
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JaD_rot = S6RRRRRR9_jacobiaD_rot_sym_varpar(qJ, qJD, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR9_jacobiaD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRR9_jacobiaD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRRRR9_jacobiaD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RRRRRR9_jacobiaD_rot_sym_varpar: pkin has to be [13x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiaD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:32:11
	% EndTime: 2019-10-10 13:32:11
	% DurationCPUTime: 0.01s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiaD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:32:11
	% EndTime: 2019-10-10 13:32:11
	% DurationCPUTime: 0.03s
	% Computational Cost: add. (9->0), mult. (37->0), div. (15->0), fcn. (22->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiaD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:32:11
	% EndTime: 2019-10-10 13:32:11
	% DurationCPUTime: 0.40s
	% Computational Cost: add. (215->39), mult. (853->106), div. (126->12), fcn. (1047->9), ass. (0->54)
	t99 = sin(pkin(6));
	t93 = t99 ^ 2;
	t100 = cos(pkin(6));
	t95 = 0.1e1 / t100 ^ 2;
	t104 = cos(qJ(1));
	t98 = t104 ^ 2;
	t89 = t98 * t93 * t95 + 0.1e1;
	t102 = sin(qJ(1));
	t97 = t102 ^ 2;
	t126 = 0.1e1 / t89 ^ 2 * t97;
	t131 = t126 * t95;
	t122 = t104 * t99;
	t88 = atan2(t122, t100);
	t84 = sin(t88);
	t85 = cos(t88);
	t72 = t85 * t100 + t84 * t122;
	t67 = 0.1e1 / t72;
	t103 = cos(qJ(2));
	t118 = t104 * t103;
	t101 = sin(qJ(2));
	t121 = t102 * t101;
	t113 = t100 * t121 - t118;
	t77 = 0.1e1 / t113;
	t94 = 0.1e1 / t100;
	t68 = 0.1e1 / t72 ^ 2;
	t78 = 0.1e1 / t113 ^ 2;
	t119 = t104 * t101;
	t120 = t102 * t103;
	t81 = -t100 * t119 - t120;
	t82 = t100 * t120 + t119;
	t71 = t81 * qJD(1) - t82 * qJD(2);
	t128 = t71 * t77 * t78;
	t115 = t100 * t118;
	t70 = -qJD(1) * t115 - qJD(2) * t118 + (qJD(2) * t100 + qJD(1)) * t121;
	t129 = t70 * t78;
	t76 = t82 ^ 2;
	t75 = t76 * t78 + 0.1e1;
	t130 = (t76 * t128 - t82 * t129) / t75 ^ 2;
	t127 = t81 * t82;
	t125 = t93 * t94;
	t124 = t102 * t68;
	t123 = t104 * t68;
	t117 = qJD(1) * t104;
	t86 = 0.1e1 / t89;
	t116 = (t86 - 0.1e1) * t99;
	t114 = -0.2e1 * t94 * t131;
	t80 = t115 - t121;
	t63 = (-t104 * t85 * t86 * t125 + t84 * t116) * t102;
	t92 = t99 * t93;
	t73 = 0.1e1 / t75;
	t69 = t67 * t68;
	t66 = t97 * t93 * t68 + 0.1e1;
	t62 = qJD(1) * t63;
	t1 = [(-t86 * t94 * t99 + t92 * t114) * t117, 0, 0, 0, 0, 0; (0.2e1 * (-t104 * t67 + t63 * t124) / t66 ^ 2 * (-t62 * t69 * t97 + t117 * t124) * t93 + ((0.2e1 * t102 * t63 * t69 - t123) * t62 + (-t63 * t123 + (-t67 + (-t92 * t131 - t116) * t84 * t123 - (t93 ^ 2 * t98 * t114 + (-t126 + (0.2e1 * t97 - t98) * t86) * t125) * t68 * t85) * t102) * qJD(1)) / t66) * t99, 0, 0, 0, 0, 0; 0.2e1 * (t78 * t127 + t77 * t80) * t130 + (-(-t82 * qJD(1) + t81 * qJD(2)) * t77 - 0.2e1 * t127 * t128 + (-t80 * t71 - (t113 * qJD(1) - t80 * qJD(2)) * t82 + t81 * t70) * t78) * t73, -0.2e1 * t130 + 0.2e1 * (-t73 * t129 + (t73 * t128 - t78 * t130) * t82) * t82, 0, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiaD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:32:11
	% EndTime: 2019-10-10 13:32:12
	% DurationCPUTime: 1.25s
	% Computational Cost: add. (2555->103), mult. (7918->233), div. (442->12), fcn. (10062->13), ass. (0->106)
	t218 = sin(pkin(6));
	t219 = cos(pkin(7));
	t220 = cos(pkin(6));
	t217 = sin(pkin(7));
	t225 = cos(qJ(2));
	t268 = t217 * t225;
	t206 = -t218 * t268 + t220 * t219;
	t203 = 0.1e1 / t206;
	t222 = sin(qJ(2));
	t226 = cos(qJ(1));
	t260 = t226 * t222;
	t223 = sin(qJ(1));
	t261 = t223 * t225;
	t238 = t220 * t260 + t261;
	t267 = t218 * t222;
	t204 = 0.1e1 / t206 ^ 2;
	t259 = t226 * t225;
	t262 = t223 * t222;
	t207 = -t220 * t259 + t262;
	t265 = t218 * t226;
	t242 = -t207 * t217 + t219 * t265;
	t272 = t242 * t204;
	t284 = t217 * (t203 * t238 + t267 * t272);
	t189 = atan2(t242, t206);
	t184 = sin(t189);
	t185 = cos(t189);
	t170 = t184 * t242 + t185 * t206;
	t167 = 0.1e1 / t170;
	t221 = sin(qJ(3));
	t224 = cos(qJ(3));
	t237 = t220 * t262 - t259;
	t239 = t220 * t261 + t260;
	t266 = t218 * t223;
	t252 = t217 * t266;
	t240 = -t219 * t239 + t252;
	t181 = t221 * t240 - t224 * t237;
	t175 = 0.1e1 / t181;
	t168 = 0.1e1 / t170 ^ 2;
	t176 = 0.1e1 / t181 ^ 2;
	t200 = -t217 * t239 - t219 * t266;
	t197 = t200 ^ 2;
	t163 = t197 * t168 + 0.1e1;
	t192 = qJD(1) * t207 + qJD(2) * t237;
	t258 = qJD(1) * t218;
	t249 = t226 * t258;
	t182 = t192 * t217 - t219 * t249;
	t276 = t182 * t168;
	t196 = t242 ^ 2;
	t188 = t196 * t204 + 0.1e1;
	t186 = 0.1e1 / t188;
	t194 = qJD(1) * t239 + qJD(2) * t238;
	t250 = t223 * t258;
	t183 = -t194 * t217 - t219 * t250;
	t257 = qJD(2) * t218;
	t269 = t217 * t222;
	t245 = t257 * t269;
	t244 = t204 * t245;
	t233 = t183 * t203 - t242 * t244;
	t159 = t233 * t186;
	t243 = -t184 * t206 + t185 * t242;
	t155 = t159 * t243 + t184 * t183 + t185 * t245;
	t282 = t155 * t167 * t168;
	t283 = (-t197 * t282 + t200 * t276) / t163 ^ 2;
	t193 = qJD(1) * t238 + qJD(2) * t239;
	t235 = t192 * t219 + t217 * t249;
	t165 = qJD(3) * t181 - t193 * t221 - t224 * t235;
	t263 = t219 * t224;
	t270 = t237 * t221;
	t180 = -t224 * t252 + t239 * t263 - t270;
	t174 = t180 ^ 2;
	t173 = t174 * t176 + 0.1e1;
	t277 = t176 * t180;
	t166 = -t193 * t224 + t235 * t221 + (t224 * t240 + t270) * qJD(3);
	t279 = t166 * t175 * t176;
	t281 = (t165 * t277 - t174 * t279) / t173 ^ 2;
	t205 = t203 * t204;
	t280 = (-t196 * t205 * t245 + t183 * t272) / t188 ^ 2;
	t278 = t168 * t200;
	t275 = t184 * t200;
	t274 = t185 * t200;
	t273 = t242 * t203;
	t271 = t238 * t221;
	t264 = t219 * t221;
	t256 = -0.2e1 * t283;
	t255 = -0.2e1 * t282;
	t254 = 0.2e1 * t281;
	t253 = 0.2e1 * t280;
	t251 = t217 * t265;
	t248 = -0.2e1 * t203 * t280;
	t247 = 0.2e1 * t180 * t279;
	t246 = t217 * t250;
	t241 = t207 * t219 + t251;
	t190 = -t221 * t239 - t237 * t263;
	t191 = -t224 * t239 + t237 * t264;
	t234 = t184 + (t185 * t273 - t184) * t186;
	t179 = t221 * t241 - t224 * t238;
	t216 = t217 ^ 2;
	t195 = qJD(1) * t237 + qJD(2) * t207;
	t178 = -t224 * t241 - t271;
	t171 = 0.1e1 / t173;
	t161 = 0.1e1 / t163;
	t160 = t186 * t284;
	t158 = t234 * t200;
	t156 = (-t184 * t238 + t185 * t267) * t217 - t243 * t160;
	t154 = t253 * t284 + (t195 * t203 * t217 + (-t183 * t204 * t269 + (t204 * t238 * t216 * t222 + (0.2e1 * t205 * t216 * t218 * t222 ^ 2 - t204 * t268) * t242) * qJD(2)) * t218) * t186;
	t1 = [t200 * t248 + (t182 * t203 - t200 * t244) * t186, t154, 0, 0, 0, 0; t242 * t167 * t256 + (t183 * t167 + (-t155 * t242 + t158 * t182) * t168) * t161 + ((t158 * t255 + t234 * t276) * t161 + (t158 * t256 + ((-t159 * t186 * t273 + t253) * t275 + (t242 * t248 + t159 + (-t159 + t233) * t186) * t274) * t161) * t168) * t200, 0.2e1 * (t167 * t217 * t237 - t156 * t278) * t283 + ((t243 * t154 - (-t159 * t170 + t183 * t185) * t160) * t278 + (t200 * t255 + t276) * t156 + (-t193 * t167 + (t237 * t155 + (-t159 * t238 + t225 * t257) * t274 + (t195 + (qJD(2) * t160 - t159) * t267) * t275) * t168) * t217) * t161, 0, 0, 0, 0; (-t175 * t178 + t179 * t277) * t254 + ((-t194 * t263 + t195 * t221 + t224 * t246) * t175 + t179 * t247 + (-t178 * t166 - (t194 * t264 + t195 * t224 - t221 * t246) * t180 - t179 * t165) * t176 + (t179 * t175 - (t207 * t263 + t224 * t251 + t271) * t277) * qJD(3)) * t171, (-t175 * t190 + t191 * t277) * t254 + ((qJD(3) * t191 + t192 * t221 - t193 * t263) * t175 + t191 * t247 + (-t190 * t166 - (-qJD(3) * t190 + t192 * t224 + t193 * t264) * t180 - t191 * t165) * t176) * t171, -0.2e1 * t281 + 0.2e1 * (t165 * t176 * t171 + (-t171 * t279 - t176 * t281) * t180) * t180, 0, 0, 0;];
	JaD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiaD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:32:12
	% EndTime: 2019-10-10 13:32:15
	% DurationCPUTime: 2.96s
	% Computational Cost: add. (8022->174), mult. (25165->321), div. (705->12), fcn. (31370->15), ass. (0->161)
	t337 = cos(pkin(7));
	t339 = sin(qJ(3));
	t436 = cos(pkin(6));
	t437 = sin(qJ(2));
	t388 = t436 * t437;
	t438 = sin(qJ(1));
	t374 = t438 * t388;
	t341 = cos(qJ(2));
	t342 = cos(qJ(1));
	t417 = t342 * t341;
	t357 = t374 - t417;
	t398 = t341 * t436;
	t358 = t342 * t437 + t438 * t398;
	t336 = sin(pkin(6));
	t435 = sin(pkin(7));
	t399 = t336 * t435;
	t382 = t438 * t399;
	t439 = cos(qJ(3));
	t300 = -t357 * t439 + (-t358 * t337 + t382) * t339;
	t420 = t336 * t337;
	t392 = t438 * t420;
	t319 = t358 * t435 + t392;
	t338 = sin(qJ(4));
	t340 = cos(qJ(4));
	t280 = t300 * t338 - t319 * t340;
	t448 = 0.2e1 * t280;
	t324 = t438 * t341 + t342 * t388;
	t390 = t342 * t399;
	t375 = t439 * t390;
	t359 = -t324 * t339 - t375;
	t335 = t438 * t437;
	t380 = -t342 * t398 + t335;
	t363 = t380 * t439;
	t361 = t337 * t363;
	t294 = t361 - t359;
	t292 = t294 ^ 2;
	t401 = t437 * t339;
	t402 = t439 * t341;
	t366 = t337 * t402 - t401;
	t384 = t435 * t436;
	t373 = t439 * t384;
	t316 = -t366 * t336 - t373;
	t314 = 0.1e1 / t316 ^ 2;
	t286 = t292 * t314 + 0.1e1;
	t284 = 0.1e1 / t286;
	t371 = t380 * t339;
	t404 = t324 * t439;
	t353 = -t337 * t371 + t404;
	t310 = t358 * qJD(1) + t324 * qJD(2);
	t311 = -qJD(1) * t374 - qJD(2) * t335 + (qJD(2) * t436 + qJD(1)) * t417;
	t331 = t339 * t390;
	t369 = t439 * t382;
	t403 = t337 * t439;
	t362 = -qJD(1) * t369 - qJD(3) * t331 + t310 * t403 + t311 * t339;
	t269 = t353 * qJD(3) + t362;
	t391 = t437 * t439;
	t418 = t339 * t341;
	t364 = t337 * t391 + t418;
	t367 = t337 * t418 + t391;
	t381 = t339 * t384;
	t290 = qJD(3) * t381 + (t364 * qJD(2) + t367 * qJD(3)) * t336;
	t313 = 0.1e1 / t316;
	t422 = t294 * t314;
	t379 = -t269 * t313 + t290 * t422;
	t251 = t379 * t284;
	t287 = atan2(-t294, t316);
	t282 = sin(t287);
	t283 = cos(t287);
	t383 = -t282 * t316 - t283 * t294;
	t246 = t383 * t251 - t282 * t269 + t283 * t290;
	t263 = -t282 * t294 + t283 * t316;
	t261 = 0.1e1 / t263 ^ 2;
	t447 = t246 * t261;
	t446 = t290 * t314;
	t356 = t358 * t439;
	t444 = -t337 * t356 + t339 * t357 + t369;
	t293 = t444 ^ 2;
	t257 = t293 * t261 + 0.1e1;
	t255 = 0.1e1 / t257;
	t260 = 0.1e1 / t263;
	t309 = t324 * qJD(1) + t358 * qJD(2);
	t351 = t380 * qJD(1) + t357 * qJD(2);
	t349 = t351 * t439;
	t267 = -qJD(1) * t375 + t300 * qJD(3) - t309 * t339 - t337 * t349;
	t426 = t267 * t261;
	t433 = t260 * t447;
	t434 = (-t293 * t433 - t426 * t444) / t257 ^ 2;
	t445 = -t255 * t447 - 0.2e1 * t260 * t434;
	t440 = -0.2e1 * t444;
	t393 = t433 * t440;
	t415 = 0.2e1 * t434;
	t428 = t261 * t444;
	t443 = -t415 * t428 + (t393 - t426) * t255;
	t442 = -(qJD(1) * t382 - t324 * qJD(3) - t310 * t337) * t339 + qJD(3) * t375 - t311 * t439;
	t281 = t300 * t340 + t319 * t338;
	t275 = 0.1e1 / t281;
	t276 = 0.1e1 / t281 ^ 2;
	t441 = -0.2e1 * t294;
	t350 = t351 * t339;
	t268 = qJD(1) * t331 + t444 * qJD(3) - t309 * t439 + t337 * t350;
	t405 = t342 * t420;
	t301 = qJD(1) * t405 - t351 * t435;
	t258 = t281 * qJD(4) + t268 * t338 - t301 * t340;
	t274 = t280 ^ 2;
	t266 = t274 * t276 + 0.1e1;
	t425 = t276 * t280;
	t416 = qJD(4) * t280;
	t259 = t268 * t340 + t301 * t338 - t416;
	t429 = t259 * t275 * t276;
	t432 = (t258 * t425 - t274 * t429) / t266 ^ 2;
	t424 = t313 * t446;
	t431 = (t269 * t422 - t292 * t424) / t286 ^ 2;
	t430 = t255 * t260;
	t264 = 0.1e1 / t266;
	t427 = t264 * t276;
	t423 = t294 * t313;
	t419 = t337 * t339;
	t414 = -0.2e1 * t432;
	t413 = -0.2e1 * t431;
	t412 = t276 * t432;
	t411 = t313 * t431;
	t410 = t255 * t428;
	t409 = t258 * t427;
	t406 = t280 * t429;
	t400 = t357 * t435;
	t397 = t435 * t309;
	t395 = 0.2e1 * t406;
	t394 = t424 * t441;
	t372 = t337 * t380;
	t354 = t339 * t372 - t404;
	t298 = t331 + t354;
	t318 = -t380 * t435 + t405;
	t279 = t298 * t340 + t318 * t338;
	t278 = t298 * t338 - t318 * t340;
	t378 = -t338 * t275 + t340 * t425;
	t296 = -t331 + t353;
	t317 = t367 * t336 + t381;
	t377 = -t296 * t313 + t317 * t422;
	t306 = t324 * t403 - t371;
	t323 = t364 * t336;
	t376 = -t306 * t313 + t323 * t422;
	t308 = t357 * t419 - t356;
	t289 = t308 * t340 - t338 * t400;
	t370 = -t308 * t338 - t340 * t400;
	t368 = -t282 + (t283 * t423 + t282) * t284;
	t365 = -t337 * t401 + t402;
	t360 = t439 * t372;
	t307 = -t358 * t339 - t357 * t403;
	t303 = (t366 * qJD(2) + t365 * qJD(3)) * t336;
	t302 = -qJD(1) * t392 - t310 * t435;
	t291 = qJD(3) * t373 + (t365 * qJD(2) + t366 * qJD(3)) * t336;
	t273 = t311 * t403 - t310 * t339 + (-t324 * t419 - t363) * qJD(3);
	t272 = -t307 * qJD(3) + t309 * t419 + t349;
	t271 = qJD(3) * t360 + t442;
	t270 = -qJD(3) * t361 - t442;
	t254 = t376 * t284;
	t253 = t377 * t284;
	t247 = t383 * t253 - t282 * t296 + t283 * t317;
	t245 = t376 * t413 + (t323 * t394 - t273 * t313 + (t269 * t323 + t290 * t306 + t294 * t303) * t314) * t284;
	t244 = t377 * t413 + (t317 * t394 - t270 * t313 + (t269 * t317 + t290 * t296 + t291 * t294) * t314) * t284;
	t1 = [t411 * t440 + (-t267 * t313 - t444 * t446) * t284, t245, t244, 0, 0, 0; (t354 * qJD(3) - t362) * t430 + (t368 * t267 - ((-t251 * t284 * t423 + t413) * t282 + (t411 * t441 - t251 + (t251 - t379) * t284) * t283) * t444) * t410 + t445 * (-t360 + t359) - t443 * t368 * t444, (t308 * qJD(3) - t309 * t403 + t350) * t430 + ((-t245 * t294 - t254 * t269 + t303 + (-t254 * t316 - t306) * t251) * t283 + (-t245 * t316 - t254 * t290 - t273 + (t254 * t294 - t323) * t251) * t282) * t410 + t445 * t307 + t443 * (t383 * t254 - t282 * t306 + t283 * t323), (-t247 * t428 - t260 * t300) * t415 + (t247 * t393 + t268 * t260 + (-t300 * t246 - t247 * t267 - (-(-t244 * t294 - t253 * t269 + t291 + (-t253 * t316 - t296) * t251) * t283 - (-t244 * t316 - t253 * t290 - t270 + (t253 * t294 - t317) * t251) * t282) * t444) * t261) * t255, 0, 0, 0; 0.2e1 * (-t275 * t278 + t279 * t425) * t432 + ((t279 * qJD(4) + t271 * t338 - t302 * t340) * t275 + t279 * t395 + (-t278 * t259 - (-t278 * qJD(4) + t271 * t340 + t302 * t338) * t280 - t279 * t258) * t276) * t264, (t412 * t448 - t409) * t289 - (-t259 * t427 + t275 * t414) * t370 + ((t289 * qJD(4) + t272 * t338 + t340 * t397) * t275 - (t370 * qJD(4) + t272 * t340 - t338 * t397) * t425 + t289 * t395) * t264, -t378 * t444 * t414 + (t378 * t267 - ((-qJD(4) * t275 - 0.2e1 * t406) * t340 + (t258 * t340 + (t259 - t416) * t338) * t276) * t444) * t264, t414 + (t409 + (-t264 * t429 - t412) * t280) * t448, 0, 0;];
	JaD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiaD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:32:13
	% EndTime: 2019-10-10 13:32:21
	% DurationCPUTime: 8.65s
	% Computational Cost: add. (19869->241), mult. (59163->462), div. (983->12), fcn. (74815->17), ass. (0->188)
	t567 = cos(pkin(6));
	t568 = sin(qJ(2));
	t515 = t567 * t568;
	t462 = cos(qJ(2));
	t569 = sin(qJ(1));
	t531 = t569 * t462;
	t570 = cos(qJ(1));
	t445 = t570 * t515 + t531;
	t481 = t567 * t531 + t570 * t568;
	t435 = t481 * qJD(1) + t445 * qJD(2);
	t454 = t569 * t568;
	t496 = t569 * t515;
	t516 = t567 * t570;
	t436 = -qJD(1) * t496 - qJD(2) * t454 + (t570 * qJD(1) + qJD(2) * t516) * t462;
	t458 = sin(qJ(3));
	t461 = cos(qJ(3));
	t455 = sin(pkin(6));
	t565 = sin(pkin(7));
	t529 = t455 * t565;
	t504 = t569 * t529;
	t494 = qJD(1) * t504;
	t566 = cos(pkin(7));
	t507 = t570 * t529;
	t492 = -t462 * t516 + t454;
	t577 = t492 * t566;
	t473 = t577 + t507;
	t573 = t445 * t458 + t473 * t461;
	t376 = t573 * qJD(3) - (-t435 * t566 + t494) * t458 - t436 * t461;
	t546 = t445 * t461;
	t425 = t473 * t458 - t546;
	t457 = sin(qJ(4));
	t460 = cos(qJ(4));
	t530 = t455 * t566;
	t508 = t570 * t530;
	t474 = t492 * t565 - t508;
	t405 = t425 * t457 + t474 * t460;
	t505 = t569 * t530;
	t479 = qJD(1) * t505 + t435 * t565;
	t367 = t405 * qJD(4) - t376 * t460 + t479 * t457;
	t406 = t425 * t460 - t474 * t457;
	t586 = t406 * qJD(4) + t376 * t457 + t479 * t460;
	t583 = -t481 * t566 + t504;
	t525 = t461 * t566;
	t543 = qJD(3) * t458;
	t580 = (t458 * t577 - t546) * qJD(3) - t435 * t525 - t436 * t458 + t461 * t494 + t507 * t543;
	t514 = t566 * t568;
	t487 = -t458 * t514 + t461 * t462;
	t524 = t462 * t566;
	t488 = -t568 * t458 + t461 * t524;
	t511 = t567 * t565;
	t503 = qJD(3) * t511;
	t413 = t461 * t503 + (t487 * qJD(2) + t488 * qJD(3)) * t455;
	t489 = t458 * t524 + t568 * t461;
	t440 = t489 * t455 + t458 * t511;
	t523 = t462 * t565;
	t444 = -t455 * t523 + t567 * t566;
	t419 = t440 * t460 + t444 * t457;
	t513 = t565 * t568;
	t509 = t455 * t513;
	t493 = qJD(2) * t509;
	t391 = t419 * qJD(4) + t413 * t457 - t460 * t493;
	t418 = t440 * t457 - t444 * t460;
	t416 = 0.1e1 / t418 ^ 2;
	t579 = t391 * t416;
	t415 = 0.1e1 / t418;
	t439 = t488 * t455 + t461 * t511;
	t551 = t405 * t416;
	t498 = t415 * t573 - t439 * t551;
	t578 = t457 * t498;
	t480 = -t570 * t462 + t496;
	t471 = t492 * qJD(1) + t480 * qJD(2);
	t576 = qJD(1) * t507 + t471 * t566;
	t575 = t583 * t461;
	t390 = atan2(t405, t418);
	t385 = sin(t390);
	t386 = cos(t390);
	t360 = t385 * t405 + t386 * t418;
	t357 = 0.1e1 / t360;
	t427 = t583 * t458 - t480 * t461;
	t472 = t481 * t565 + t505;
	t408 = t427 * t460 + t472 * t457;
	t426 = -t458 * t480 - t575;
	t456 = sin(qJ(5));
	t459 = cos(qJ(5));
	t384 = t408 * t459 + t426 * t456;
	t378 = 0.1e1 / t384;
	t358 = 0.1e1 / t360 ^ 2;
	t379 = 0.1e1 / t384 ^ 2;
	t572 = 0.2e1 * t405;
	t407 = t427 * t457 - t472 * t460;
	t571 = 0.2e1 * t407;
	t401 = t407 ^ 2;
	t356 = t358 * t401 + 0.1e1;
	t434 = t445 * qJD(1) + t481 * qJD(2);
	t372 = t575 * qJD(3) - t434 * t461 + t576 * t458 + t480 * t543;
	t469 = qJD(1) * t508 - t471 * t565;
	t364 = t408 * qJD(4) + t372 * t457 - t469 * t460;
	t557 = t364 * t358;
	t400 = t405 ^ 2;
	t389 = t400 * t416 + 0.1e1;
	t387 = 0.1e1 / t389;
	t502 = -t391 * t551 + t415 * t586;
	t347 = t502 * t387;
	t510 = -t385 * t418 + t386 * t405;
	t341 = t510 * t347 + t385 * t586 + t386 * t391;
	t359 = t357 * t358;
	t563 = t341 * t359;
	t564 = (-t401 * t563 + t407 * t557) / t356 ^ 2;
	t365 = -t407 * qJD(4) + t372 * t460 + t469 * t457;
	t371 = t427 * qJD(3) - t434 * t458 - t576 * t461;
	t350 = t384 * qJD(5) + t365 * t456 - t371 * t459;
	t383 = t408 * t456 - t426 * t459;
	t377 = t383 ^ 2;
	t363 = t377 * t379 + 0.1e1;
	t556 = t379 * t383;
	t541 = qJD(5) * t383;
	t351 = t365 * t459 + t371 * t456 - t541;
	t559 = t351 * t378 * t379;
	t561 = (t350 * t556 - t377 * t559) / t363 ^ 2;
	t553 = t415 * t579;
	t560 = (-t400 * t553 + t551 * t586) / t389 ^ 2;
	t558 = t358 * t407;
	t555 = t385 * t407;
	t554 = t386 * t407;
	t552 = t405 * t415;
	t550 = t426 * t457;
	t549 = t426 * t460;
	t545 = t456 * t378;
	t544 = t459 * t383;
	t542 = qJD(4) * t460;
	t540 = 0.2e1 * t564;
	t539 = -0.2e1 * t561;
	t538 = 0.2e1 * t561;
	t537 = -0.2e1 * t560;
	t536 = t359 * t571;
	t535 = t415 * t560;
	t534 = t358 * t555;
	t533 = t358 * t554;
	t532 = t383 * t559;
	t528 = t457 * t565;
	t527 = t458 * t566;
	t526 = t460 * t565;
	t522 = t565 * t434;
	t521 = -0.2e1 * t357 * t564;
	t520 = t358 * t540;
	t519 = t341 * t536;
	t518 = 0.2e1 * t532;
	t517 = t553 * t572;
	t512 = qJD(5) * t549 + t372;
	t382 = t406 * t459 - t456 * t573;
	t381 = t406 * t456 + t459 * t573;
	t432 = -t481 * t461 + t480 * t527;
	t411 = t432 * t460 - t480 * t528;
	t431 = -t481 * t458 - t480 * t525;
	t398 = t411 * t459 + t431 * t456;
	t397 = t411 * t456 - t431 * t459;
	t501 = t379 * t544 - t545;
	t500 = t406 * t415 - t419 * t551;
	t430 = -t445 * t527 - t492 * t461;
	t409 = t430 * t457 - t445 * t526;
	t443 = t487 * t455;
	t433 = t443 * t457 - t460 * t509;
	t499 = -t409 * t415 - t433 * t551;
	t491 = -t432 * t457 - t480 * t526;
	t490 = -t385 + (-t386 * t552 + t385) * t387;
	t486 = -t458 * t462 - t461 * t514;
	t485 = qJD(4) * t550 + qJD(5) * t427 - t371 * t460;
	t412 = -t458 * t503 + (t486 * qJD(2) - t489 * qJD(3)) * t455;
	t399 = t443 * t542 + ((t486 * qJD(3) + qJD(4) * t513) * t457 + (-t489 * t457 - t460 * t523) * qJD(2)) * t455;
	t396 = t427 * t456 - t459 * t549;
	t395 = -t427 * t459 - t456 * t549;
	t394 = -t431 * qJD(3) + t434 * t527 + t471 * t461;
	t393 = t432 * qJD(3) - t434 * t525 + t471 * t458;
	t392 = -t418 * qJD(4) + t413 * t460 + t457 * t493;
	t370 = (-t436 * t527 - t435 * t461 + (-t445 * t525 + t492 * t458) * qJD(3)) * t457 + t430 * t542 - t436 * t526 + t445 * qJD(4) * t528;
	t369 = t491 * qJD(4) + t394 * t460 - t457 * t522;
	t361 = 0.1e1 / t363;
	t354 = 0.1e1 / t356;
	t353 = t387 * t578;
	t352 = t499 * t387;
	t349 = t500 * t387;
	t346 = t490 * t407;
	t344 = (t385 * t573 + t386 * t439) * t457 + t510 * t353;
	t342 = t510 * t349 + t385 * t406 + t386 * t419;
	t340 = t499 * t537 + (t433 * t517 - t370 * t415 + (t391 * t409 - t399 * t405 - t433 * t586) * t416) * t387;
	t338 = t500 * t537 + (t419 * t517 - t367 * t415 + (-t391 * t406 - t392 * t405 - t419 * t586) * t416) * t387;
	t337 = t537 * t578 + (t498 * t542 + (t439 * t517 - t580 * t415 + (-t391 * t573 - t405 * t412 - t439 * t586) * t416) * t457) * t387;
	t1 = [t535 * t571 + (-t364 * t415 + t407 * t579) * t387, t340, t337, t338, 0, 0; t405 * t521 + (t586 * t357 + (-t405 * t341 - t346 * t364) * t358) * t354 + (t346 * t520 + (0.2e1 * t346 * t563 - (t347 * t387 * t552 + t537) * t534 - (t535 * t572 - t347 + (t347 - t502) * t387) * t533 - t490 * t557) * t354) * t407, -t491 * t521 + ((t411 * qJD(4) + t394 * t457 + t460 * t522) * t357 + t491 * t358 * t341 - ((t340 * t405 + t352 * t586 + t399 + (-t352 * t418 - t409) * t347) * t386 + (-t340 * t418 - t352 * t391 - t370 + (-t352 * t405 - t433) * t347) * t385) * t558) * t354 + (t407 * t520 + (-t557 + t519) * t354) * (t510 * t352 - t385 * t409 + t386 * t433), (t344 * t558 + t357 * t550) * t540 + (-t344 * t557 + (-t371 * t457 - t426 * t542) * t357 + (t344 * t536 + t358 * t550) * t341 - (t439 * t542 + t337 * t405 + t353 * t586 + t412 * t457 + (-t353 * t418 + t457 * t573) * t347) * t533 - (t573 * t542 - t337 * t418 - t353 * t391 - t580 * t457 + (-t353 * t405 - t439 * t457) * t347) * t534) * t354, (t342 * t558 - t357 * t408) * t540 + (t342 * t519 + t365 * t357 + (-t408 * t341 - t342 * t364 - (t338 * t405 + t349 * t586 + t392 + (-t349 * t418 + t406) * t347) * t554 - (-t338 * t418 - t349 * t391 - t367 + (-t349 * t405 - t419) * t347) * t555) * t358) * t354, 0, 0; (-t378 * t381 + t382 * t556) * t538 + ((t382 * qJD(5) - t367 * t456 - t459 * t580) * t378 + t382 * t518 + (-t381 * t351 - (-t381 * qJD(5) - t367 * t459 + t456 * t580) * t383 - t382 * t350) * t379) * t361, (-t378 * t397 + t398 * t556) * t538 + ((t398 * qJD(5) + t369 * t456 - t393 * t459) * t378 + t398 * t518 + (-t397 * t351 - (-t397 * qJD(5) + t369 * t459 + t393 * t456) * t383 - t398 * t350) * t379) * t361, (-t378 * t395 + t396 * t556) * t538 + (t396 * t518 - t512 * t378 * t459 + t485 * t545 + (-t512 * t383 * t456 - t396 * t350 - t395 * t351 - t485 * t544) * t379) * t361, t501 * t407 * t539 + (t501 * t364 + ((-qJD(5) * t378 - 0.2e1 * t532) * t459 + (t350 * t459 + (t351 - t541) * t456) * t379) * t407) * t361, t539 + 0.2e1 * (t350 * t379 * t361 + (-t361 * t559 - t379 * t561) * t383) * t383, 0;];
	JaD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiaD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 13:32:13
	% EndTime: 2019-10-10 13:32:21
	% DurationCPUTime: 8.70s
	% Computational Cost: add. (21300->243), mult. (61275->461), div. (1001->12), fcn. (77398->17), ass. (0->192)
	t599 = cos(pkin(6));
	t600 = sin(qJ(2));
	t544 = t599 * t600;
	t491 = cos(qJ(2));
	t601 = sin(qJ(1));
	t564 = t601 * t491;
	t602 = cos(qJ(1));
	t472 = t602 * t544 + t564;
	t510 = t599 * t564 + t602 * t600;
	t462 = t510 * qJD(1) + t472 * qJD(2);
	t481 = t601 * t600;
	t525 = t601 * t544;
	t545 = t599 * t602;
	t463 = -qJD(1) * t525 - qJD(2) * t481 + (t602 * qJD(1) + qJD(2) * t545) * t491;
	t488 = sin(qJ(3));
	t490 = cos(qJ(3));
	t486 = sin(pkin(6));
	t597 = sin(pkin(7));
	t562 = t486 * t597;
	t533 = t601 * t562;
	t523 = qJD(1) * t533;
	t598 = cos(pkin(7));
	t536 = t602 * t562;
	t521 = -t491 * t545 + t481;
	t609 = t521 * t598;
	t502 = t609 + t536;
	t605 = t472 * t488 + t502 * t490;
	t411 = qJD(3) * t605 - (-t462 * t598 + t523) * t488 - t463 * t490;
	t578 = t472 * t490;
	t452 = t502 * t488 - t578;
	t487 = sin(qJ(4));
	t489 = cos(qJ(4));
	t563 = t486 * t598;
	t537 = t602 * t563;
	t503 = t521 * t597 - t537;
	t432 = t452 * t487 + t503 * t489;
	t534 = t601 * t563;
	t508 = qJD(1) * t534 + t462 * t597;
	t394 = t432 * qJD(4) - t411 * t489 + t508 * t487;
	t433 = t452 * t489 - t503 * t487;
	t617 = t433 * qJD(4) + t411 * t487 + t508 * t489;
	t614 = -t510 * t598 + t533;
	t559 = t490 * t598;
	t575 = qJD(3) * t488;
	t408 = (t488 * t609 - t578) * qJD(3) - t462 * t559 - t463 * t488 + t490 * t523 + t536 * t575;
	t543 = t598 * t600;
	t516 = -t488 * t543 + t490 * t491;
	t558 = t491 * t598;
	t517 = -t600 * t488 + t490 * t558;
	t540 = t599 * t597;
	t532 = qJD(3) * t540;
	t440 = t490 * t532 + (t516 * qJD(2) + t517 * qJD(3)) * t486;
	t518 = t488 * t558 + t600 * t490;
	t467 = t518 * t486 + t488 * t540;
	t471 = -t491 * t562 + t599 * t598;
	t446 = t467 * t489 + t471 * t487;
	t542 = t597 * t600;
	t538 = t486 * t542;
	t522 = qJD(2) * t538;
	t418 = t446 * qJD(4) + t440 * t487 - t489 * t522;
	t445 = t467 * t487 - t471 * t489;
	t443 = 0.1e1 / t445 ^ 2;
	t611 = t418 * t443;
	t442 = 0.1e1 / t445;
	t466 = t517 * t486 + t490 * t540;
	t583 = t432 * t443;
	t527 = t442 * t605 - t466 * t583;
	t610 = t487 * t527;
	t509 = -t602 * t491 + t525;
	t500 = qJD(1) * t521 + t509 * qJD(2);
	t608 = qJD(1) * t536 + t500 * t598;
	t607 = t614 * t490;
	t417 = atan2(t432, t445);
	t412 = sin(t417);
	t413 = cos(t417);
	t387 = t412 * t432 + t413 * t445;
	t384 = 0.1e1 / t387;
	t454 = t614 * t488 - t509 * t490;
	t501 = t510 * t597 + t534;
	t435 = t454 * t489 + t501 * t487;
	t453 = -t488 * t509 - t607;
	t485 = qJ(5) + qJ(6);
	t482 = sin(t485);
	t483 = cos(t485);
	t405 = t435 * t483 + t453 * t482;
	t399 = 0.1e1 / t405;
	t385 = 0.1e1 / t387 ^ 2;
	t400 = 0.1e1 / t405 ^ 2;
	t604 = 0.2e1 * t432;
	t434 = t454 * t487 - t501 * t489;
	t603 = 0.2e1 * t434;
	t428 = t434 ^ 2;
	t383 = t385 * t428 + 0.1e1;
	t461 = t472 * qJD(1) + t510 * qJD(2);
	t407 = qJD(3) * t607 - t461 * t490 + t488 * t608 + t509 * t575;
	t498 = qJD(1) * t537 - t500 * t597;
	t391 = t435 * qJD(4) + t407 * t487 - t498 * t489;
	t589 = t391 * t385;
	t427 = t432 ^ 2;
	t416 = t427 * t443 + 0.1e1;
	t414 = 0.1e1 / t416;
	t531 = -t418 * t583 + t442 * t617;
	t374 = t531 * t414;
	t539 = -t412 * t445 + t413 * t432;
	t368 = t539 * t374 + t412 * t617 + t413 * t418;
	t386 = t384 * t385;
	t595 = t368 * t386;
	t596 = (-t428 * t595 + t434 * t589) / t383 ^ 2;
	t406 = t454 * qJD(3) - t461 * t488 - t490 * t608;
	t484 = qJD(5) + qJD(6);
	t548 = t435 * t484 - t406;
	t392 = -t434 * qJD(4) + t407 * t489 + t498 * t487;
	t551 = t453 * t484 + t392;
	t377 = t551 * t482 + t548 * t483;
	t404 = t435 * t482 - t453 * t483;
	t398 = t404 ^ 2;
	t390 = t398 * t400 + 0.1e1;
	t588 = t400 * t404;
	t378 = -t548 * t482 + t551 * t483;
	t591 = t378 * t399 * t400;
	t593 = (t377 * t588 - t398 * t591) / t390 ^ 2;
	t585 = t442 * t611;
	t592 = (-t427 * t585 + t583 * t617) / t416 ^ 2;
	t590 = t385 * t434;
	t587 = t412 * t434;
	t586 = t413 * t434;
	t584 = t432 * t442;
	t582 = t453 * t487;
	t581 = t453 * t489;
	t577 = t482 * t399;
	t576 = t483 * t404;
	t574 = qJD(4) * t489;
	t573 = 0.2e1 * t596;
	t572 = -0.2e1 * t593;
	t571 = 0.2e1 * t593;
	t570 = -0.2e1 * t592;
	t569 = t386 * t603;
	t568 = t442 * t592;
	t567 = t385 * t587;
	t566 = t385 * t586;
	t565 = t404 * t591;
	t561 = t487 * t597;
	t560 = t488 * t598;
	t557 = t597 * t489;
	t556 = -0.2e1 * t384 * t596;
	t555 = t385 * t573;
	t554 = t368 * t569;
	t553 = 0.2e1 * t565;
	t552 = t585 * t604;
	t550 = -t484 * t605 - t394;
	t458 = -t510 * t488 - t509 * t559;
	t421 = -t458 * qJD(3) + t461 * t560 + t500 * t490;
	t459 = -t510 * t490 + t509 * t560;
	t520 = -t459 * t487 - t509 * t557;
	t549 = t520 * qJD(4) + t421 * t489 + t458 * t484 - t461 * t561;
	t547 = t433 * t484 - t408;
	t438 = t459 * t489 - t509 * t561;
	t546 = -t459 * qJD(3) + t438 * t484 + t461 * t559 - t500 * t488;
	t541 = t484 * t581 + t407;
	t530 = t400 * t576 - t577;
	t529 = t433 * t442 - t446 * t583;
	t457 = -t472 * t560 - t521 * t490;
	t436 = t457 * t487 - t472 * t557;
	t470 = t516 * t486;
	t460 = t470 * t487 - t489 * t538;
	t528 = -t436 * t442 - t460 * t583;
	t519 = -t412 + (-t413 * t584 + t412) * t414;
	t515 = -t488 * t491 - t490 * t543;
	t514 = qJD(4) * t582 - t406 * t489 + t454 * t484;
	t439 = -t488 * t532 + (t515 * qJD(2) - t518 * qJD(3)) * t486;
	t426 = t470 * t574 + ((t515 * qJD(3) + qJD(4) * t542) * t487 + (-t518 * t487 - t491 * t557) * qJD(2)) * t486;
	t425 = t438 * t483 + t458 * t482;
	t424 = t438 * t482 - t458 * t483;
	t423 = t454 * t482 - t483 * t581;
	t422 = -t454 * t483 - t482 * t581;
	t419 = -t445 * qJD(4) + t440 * t489 + t487 * t522;
	t403 = t433 * t483 - t482 * t605;
	t402 = t433 * t482 + t483 * t605;
	t397 = (-t463 * t560 - t462 * t490 + (-t472 * t559 + t521 * t488) * qJD(3)) * t487 + t457 * t574 - t463 * t557 + t472 * qJD(4) * t561;
	t388 = 0.1e1 / t390;
	t381 = 0.1e1 / t383;
	t380 = t414 * t610;
	t379 = t528 * t414;
	t376 = t529 * t414;
	t373 = t519 * t434;
	t371 = (t412 * t605 + t413 * t466) * t487 + t539 * t380;
	t369 = t539 * t376 + t412 * t433 + t413 * t446;
	t367 = t528 * t570 + (t460 * t552 - t397 * t442 + (t418 * t436 - t426 * t432 - t460 * t617) * t443) * t414;
	t365 = t529 * t570 + (t446 * t552 - t394 * t442 + (-t418 * t433 - t419 * t432 - t446 * t617) * t443) * t414;
	t364 = t570 * t610 + (t527 * t574 + (t466 * t552 - t408 * t442 + (-t418 * t605 - t432 * t439 - t466 * t617) * t443) * t487) * t414;
	t363 = t572 + 0.2e1 * (t377 * t400 * t388 + (-t388 * t591 - t400 * t593) * t404) * t404;
	t1 = [t568 * t603 + (-t391 * t442 + t434 * t611) * t414, t367, t364, t365, 0, 0; t432 * t556 + (t617 * t384 + (-t432 * t368 - t373 * t391) * t385) * t381 + (t373 * t555 + (0.2e1 * t373 * t595 - (t374 * t414 * t584 + t570) * t567 - (t568 * t604 - t374 + (t374 - t531) * t414) * t566 - t519 * t589) * t381) * t434, -t520 * t556 + ((t438 * qJD(4) + t421 * t487 + t461 * t557) * t384 + t520 * t385 * t368 - ((t367 * t432 + t379 * t617 + t426 + (-t379 * t445 - t436) * t374) * t413 + (-t367 * t445 - t379 * t418 - t397 + (-t379 * t432 - t460) * t374) * t412) * t590) * t381 + (t434 * t555 + (-t589 + t554) * t381) * (t539 * t379 - t412 * t436 + t413 * t460), (t371 * t590 + t384 * t582) * t573 + (-t371 * t589 + (-t406 * t487 - t453 * t574) * t384 + (t371 * t569 + t385 * t582) * t368 - (t466 * t574 + t364 * t432 + t380 * t617 + t439 * t487 + (-t380 * t445 + t487 * t605) * t374) * t566 - (t605 * t574 - t364 * t445 - t380 * t418 - t408 * t487 + (-t380 * t432 - t466 * t487) * t374) * t567) * t381, (t369 * t590 - t384 * t435) * t573 + (t369 * t554 + t392 * t384 + (-t435 * t368 - t369 * t391 - (t365 * t432 + t376 * t617 + t419 + (-t376 * t445 + t433) * t374) * t586 - (-t365 * t445 - t376 * t418 - t394 + (-t376 * t432 - t446) * t374) * t587) * t385) * t381, 0, 0; (-t399 * t402 + t403 * t588) * t571 + ((t550 * t482 + t547 * t483) * t399 + t403 * t553 + (-t402 * t378 - (-t547 * t482 + t550 * t483) * t404 - t403 * t377) * t400) * t388, (-t399 * t424 + t425 * t588) * t571 + ((t549 * t482 + t546 * t483) * t399 + t425 * t553 + (-t424 * t378 - (-t546 * t482 + t549 * t483) * t404 - t425 * t377) * t400) * t388, (-t399 * t422 + t423 * t588) * t571 + (t423 * t553 - t541 * t399 * t483 + t514 * t577 + (-t541 * t404 * t482 - t423 * t377 - t422 * t378 - t514 * t576) * t400) * t388, t530 * t434 * t572 + (t530 * t391 + ((-t399 * t484 - 0.2e1 * t565) * t483 + (t377 * t483 + (-t404 * t484 + t378) * t482) * t400) * t434) * t388, t363, t363;];
	JaD_rot = t1;
else
	JaD_rot=NaN(3,6);
end