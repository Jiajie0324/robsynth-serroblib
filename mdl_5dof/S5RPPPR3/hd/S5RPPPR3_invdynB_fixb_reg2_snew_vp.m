% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S5RPPPR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% qJDD [5x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d5,theta2,theta3]';
% 
% Output:
% tauB_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:44
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S5RPPPR3_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPPR3_invdynB_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPPPR3_invdynB_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPPPR3_invdynB_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPPPR3_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPPPR3_invdynB_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:44:04
% EndTime: 2019-12-31 17:44:10
% DurationCPUTime: 4.93s
% Computational Cost: add. (11608->417), mult. (25510->595), div. (0->0), fcn. (15658->8), ass. (0->285)
t412 = sin(pkin(8));
t407 = t412 ^ 2;
t414 = cos(pkin(8));
t408 = t414 ^ 2;
t421 = qJD(1) ^ 2;
t384 = (t407 + t408) * t421;
t371 = t412 * t384;
t413 = sin(pkin(7));
t415 = cos(pkin(7));
t445 = t415 * qJDD(1);
t335 = -t413 * t371 + t412 * t445;
t446 = t413 * qJDD(1);
t338 = t415 * t371 + t412 * t446;
t417 = sin(qJ(1));
t419 = cos(qJ(1));
t280 = t419 * t335 - t417 * t338;
t496 = pkin(5) * t280;
t282 = t417 * t335 + t419 * t338;
t495 = pkin(5) * t282;
t416 = sin(qJ(5));
t418 = cos(qJ(5));
t428 = t412 * t416 + t414 * t418;
t362 = t428 * qJD(1);
t452 = qJD(1) * t414;
t453 = qJD(1) * t412;
t364 = -t416 * t452 + t418 * t453;
t468 = t364 * t362;
t491 = qJDD(5) - t468;
t494 = t416 * t491;
t493 = t418 * t491;
t389 = t419 * g(1) + t417 * g(2);
t378 = -t421 * pkin(1) - t389;
t388 = t417 * g(1) - t419 * g(2);
t426 = qJDD(1) * pkin(1) + t388;
t318 = t413 * t378 - t415 * t426;
t319 = t415 * t378 + t413 * t426;
t435 = t413 * t318 + t415 * t319;
t265 = t415 * t318 - t413 * t319;
t456 = t419 * t265;
t492 = -t417 * t435 + t456;
t461 = t265 * t417;
t229 = t419 * t435 + t461;
t381 = t415 * t421 + t446;
t382 = -t413 * t421 + t445;
t328 = -t417 * t381 + t419 * t382;
t410 = g(3) - qJDD(2);
t349 = qJ(2) * t381 - t415 * t410;
t429 = -qJ(2) * t382 - t413 * t410;
t490 = -pkin(5) * t328 + t349 * t417 + t419 * t429;
t489 = qJ(2) * t335;
t488 = qJ(2) * t338;
t487 = -pkin(1) * t335 + qJ(3) * t371;
t478 = t419 * t381 + t417 * t382;
t485 = pkin(5) * t478 + t419 * t349 - t417 * t429;
t402 = t407 * qJDD(1);
t403 = t408 * qJDD(1);
t380 = t403 - t402;
t385 = (t407 - t408) * t421;
t323 = t413 * t380 - t415 * t385;
t326 = t415 * t380 + t413 * t385;
t484 = t323 * t419 + t326 * t417;
t483 = t417 * t323 - t419 * t326;
t372 = t414 * t384;
t436 = t414 * t445;
t337 = -t413 * t372 + t436;
t340 = t415 * t372 + t414 * t446;
t281 = t419 * t337 - t340 * t417;
t482 = t417 * t337 + t419 * t340;
t425 = t428 * qJDD(1);
t358 = t362 ^ 2;
t359 = t364 ^ 2;
t476 = pkin(3) + pkin(4);
t475 = pkin(3) * t414;
t379 = t403 + t402;
t322 = t413 * t379 + t415 * t384;
t325 = t415 * t379 - t413 * t384;
t270 = t419 * t322 + t417 * t325;
t474 = pkin(5) * t270;
t473 = pkin(5) * t281;
t472 = qJ(2) * t322;
t471 = qJ(2) * t337;
t469 = qJ(4) * t412;
t411 = qJDD(1) * pkin(2);
t467 = t412 * t414;
t305 = -t421 * qJ(3) + qJDD(3) + t318 - t411;
t466 = t413 * t305;
t465 = t414 * t421;
t464 = t415 * t305;
t448 = qJDD(1) * t412;
t398 = qJ(4) * t448;
t447 = qJDD(1) * t414;
t400 = pkin(3) * t447;
t424 = t305 - t400;
t438 = qJD(4) * t453;
t286 = -t398 + t424 - 0.2e1 * t438;
t256 = -pkin(4) * t447 + pkin(6) * t384 + t286;
t463 = t416 * t256;
t310 = qJDD(5) + t468;
t462 = t416 * t310;
t458 = t418 * t256;
t457 = t418 * t310;
t306 = -t421 * pkin(2) + qJDD(1) * qJ(3) + t319;
t455 = t412 * t306 + t414 * t410;
t454 = t414 * t306 - t412 * t410;
t451 = t362 * qJD(5);
t450 = t364 * qJD(5);
t449 = qJD(1) * qJD(3);
t444 = t413 * t468;
t443 = t415 * t468;
t442 = pkin(1) * t322 + pkin(2) * t384 + qJ(3) * t379;
t441 = pkin(1) * t337 + pkin(2) * t447 - qJ(3) * t372;
t431 = -t469 - t475;
t375 = t431 * qJD(1);
t440 = -t375 * t452 - t454;
t439 = t412 * t449;
t437 = t412 * t447;
t393 = 0.2e1 * t439;
t433 = t375 * t453 + qJDD(4) + t455;
t427 = t393 + t433;
t248 = (-pkin(4) * t465 - pkin(6) * qJDD(1)) * t412 + t427;
t395 = 0.2e1 * t414 * t449;
t262 = t395 - t440;
t252 = -t408 * t421 * pkin(4) - pkin(6) * t447 + t262;
t203 = -t418 * t248 + t416 * t252;
t293 = t393 + t455;
t294 = t395 + t454;
t242 = t412 * t293 + t414 * t294;
t343 = -t417 * t388 - t419 * t389;
t387 = t419 * qJDD(1) - t417 * t421;
t432 = -pkin(5) * t387 - t417 * g(3);
t430 = pkin(3) * t412 - qJ(4) * t414;
t361 = -t416 * t447 + t418 * t448;
t204 = t416 * t248 + t418 * t252;
t178 = -t418 * t203 + t416 * t204;
t179 = t416 * t203 + t418 * t204;
t241 = t414 * t293 - t412 * t294;
t344 = t381 * t467;
t345 = (-t413 * t465 + t436) * t412;
t295 = t419 * t344 + t417 * t345;
t298 = t417 * t344 - t419 * t345;
t342 = t419 * t388 - t417 * t389;
t420 = qJD(5) ^ 2;
t392 = 0.2e1 * t438;
t386 = t417 * qJDD(1) + t419 * t421;
t373 = t430 * qJDD(1);
t357 = -pkin(5) * t386 + t419 * g(3);
t352 = -t359 - t420;
t351 = -t359 + t420;
t350 = t358 - t420;
t332 = qJ(2) * t340;
t320 = qJ(2) * t325;
t316 = t359 - t358;
t315 = t361 - t451;
t314 = t361 - 0.2e1 * t451;
t313 = -t425 - t450;
t312 = 0.2e1 * t450 + t425;
t308 = -t420 - t358;
t304 = (-t362 * t418 + t364 * t416) * qJD(5);
t303 = (t362 * t416 + t364 * t418) * qJD(5);
t300 = -t358 - t359;
t292 = t418 * t315 - t416 * t450;
t291 = -t416 * t315 - t418 * t450;
t290 = -t416 * t313 + t418 * t451;
t289 = -t418 * t313 - t416 * t451;
t288 = -t305 + t392 + t398 + 0.2e1 * t400;
t287 = t392 + 0.2e1 * t398 - t424;
t278 = pkin(5) * t482;
t277 = -t416 * t352 - t457;
t276 = -t416 * t351 + t493;
t275 = t418 * t350 - t462;
t274 = t418 * t352 - t462;
t273 = -t418 * t351 - t494;
t272 = -t416 * t350 - t457;
t271 = -t417 * t322 + t419 * t325;
t269 = pkin(5) * t271;
t268 = -pkin(3) * t402 + t414 * t287;
t267 = qJ(4) * t403 - t412 * t288;
t261 = -t433 - 0.2e1 * t439;
t260 = -t418 * t312 - t416 * t314;
t259 = t416 * t361 - t418 * t425;
t258 = t416 * t312 - t418 * t314;
t257 = -t418 * t361 - t416 * t425;
t255 = t418 * t308 - t494;
t254 = t416 * t308 + t493;
t253 = pkin(1) * t410 + qJ(2) * t435;
t251 = pkin(3) * t384 + t262;
t250 = qJ(4) * t384 + t427;
t249 = -pkin(3) * t407 * t421 + (t421 * t469 - 0.2e1 * t449) * t414 + t440;
t247 = (-pkin(3) * t467 + qJ(4) * t408) * t421 + t427;
t246 = -t412 * t303 + t414 * t304;
t244 = -t413 * qJDD(5) + t415 * t246;
t243 = t415 * qJDD(5) + t413 * t246;
t239 = -t412 * t291 + t414 * t292;
t238 = -t412 * t289 + t414 * t290;
t237 = t412 * t274 + t414 * t277;
t236 = -t412 * t273 + t414 * t276;
t235 = -t412 * t272 + t414 * t275;
t234 = -t414 * t274 + t412 * t277;
t233 = -t413 * t294 + t414 * t464 + t489;
t232 = -t413 * t293 + t412 * t464 - t471;
t231 = t415 * t294 + t414 * t466 + t488;
t230 = t415 * t293 + t412 * t466 - t332;
t227 = t415 * t236 - t413 * t361;
t226 = t415 * t235 + t413 * t425;
t225 = t413 * t236 + t415 * t361;
t224 = t413 * t235 - t415 * t425;
t223 = t415 * t241 - t472;
t222 = t413 * t241 + t320;
t221 = -t412 * t261 + t414 * t262;
t220 = t414 * t261 + t412 * t262;
t219 = -t412 * t258 + t414 * t260;
t218 = t412 * t257 + t414 * t259;
t217 = -t414 * t257 + t412 * t259;
t216 = t412 * t254 + t414 * t255;
t215 = -t414 * t254 + t412 * t255;
t214 = t415 * t239 - t444;
t213 = t415 * t238 + t444;
t212 = t413 * t239 + t443;
t211 = t413 * t238 - t443;
t210 = t415 * t242 + t466;
t209 = t413 * t242 - t464;
t208 = t415 * t237 - t413 * t314;
t207 = t413 * t237 + t415 * t314;
t206 = -pkin(6) * t274 + qJ(4) * t314 - t458;
t205 = t414 * t250 - t412 * t251;
t202 = -t413 * t249 + t415 * t268 - t489;
t201 = t415 * t249 + t413 * t268 - t488;
t200 = -pkin(6) * t254 + qJ(4) * t312 - t463;
t199 = -t413 * t247 + t415 * t267 - t471;
t198 = t415 * t247 + t413 * t267 - t332;
t197 = t415 * t219 - t413 * t316;
t196 = t413 * t219 + t415 * t316;
t195 = t415 * t216 - t413 * t312;
t194 = t413 * t216 + t415 * t312;
t193 = -pkin(6) * t277 + t476 * t314 + t463;
t192 = t415 * t218 - t413 * t300;
t191 = t413 * t218 + t415 * t300;
t190 = t415 * t221 + t413 * t286;
t189 = t413 * t221 - t415 * t286;
t188 = -pkin(6) * t255 + t476 * t312 - t458;
t187 = t415 * t205 - t413 * t373 - t472;
t186 = t413 * t205 + t415 * t373 + t320;
t185 = -qJ(3) * t220 + t430 * t286;
t184 = -pkin(2) * t220 - pkin(3) * t261 - qJ(4) * t262;
t183 = -t417 * t209 + t419 * t210;
t182 = t419 * t209 + t417 * t210;
t181 = -t417 * t207 + t419 * t208;
t180 = t419 * t207 + t417 * t208;
t177 = -pkin(2) * t217 - qJ(4) * t259 + t476 * t257;
t176 = -t417 * t194 + t419 * t195;
t175 = t419 * t194 + t417 * t195;
t174 = -qJ(2) * t209 - (pkin(2) * t413 - qJ(3) * t415) * t241;
t173 = -t417 * t191 + t419 * t192;
t172 = t419 * t191 + t417 * t192;
t171 = -pkin(6) * t178 - qJ(4) * t256;
t170 = -t417 * t189 + t419 * t190;
t169 = t419 * t189 + t417 * t190;
t168 = -pkin(6) * t257 + qJ(4) * t300 - t178;
t167 = -pkin(2) * t234 - qJ(4) * t277 + t476 * t274 - t204;
t166 = -pkin(6) * t179 - t476 * t256;
t165 = -qJ(3) * t234 - t412 * t193 + t414 * t206;
t164 = qJ(2) * t210 - (-pkin(2) * t415 - qJ(3) * t413 - pkin(1)) * t241;
t163 = -pkin(6) * t259 + t476 * t300 - t179;
t162 = -pkin(2) * t215 - qJ(4) * t255 + t476 * t254 - t203;
t161 = -qJ(3) * t215 - t412 * t188 + t414 * t200;
t160 = t412 * t178 + t414 * t179;
t159 = -t414 * t178 + t412 * t179;
t158 = -qJ(2) * t189 - t413 * t184 + t415 * t185;
t157 = t415 * t160 + t413 * t256;
t156 = t413 * t160 - t415 * t256;
t155 = -pkin(1) * t220 + qJ(2) * t190 + t415 * t184 + t413 * t185;
t154 = -qJ(2) * t207 + t415 * t165 - t413 * t167;
t153 = -qJ(3) * t217 - t412 * t163 + t414 * t168;
t152 = -pkin(1) * t234 + qJ(2) * t208 + t413 * t165 + t415 * t167;
t151 = -qJ(2) * t194 + t415 * t161 - t413 * t162;
t150 = -pkin(1) * t215 + qJ(2) * t195 + t413 * t161 + t415 * t162;
t149 = -t417 * t156 + t419 * t157;
t148 = t419 * t156 + t417 * t157;
t147 = -qJ(3) * t159 - t412 * t166 + t414 * t171;
t146 = -qJ(2) * t191 + t415 * t153 - t413 * t177;
t145 = -pkin(2) * t159 - qJ(4) * t179 + t476 * t178;
t144 = -pkin(1) * t217 + qJ(2) * t192 + t413 * t153 + t415 * t177;
t143 = -qJ(2) * t156 - t413 * t145 + t415 * t147;
t142 = -pkin(1) * t159 + qJ(2) * t157 + t415 * t145 + t413 * t147;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t386, -t387, 0, t343, 0, 0, 0, 0, 0, 0, -t478, -t328, 0, t229, 0, 0, 0, 0, 0, 0, -t482, t282, t271, t183, 0, 0, 0, 0, 0, 0, -t482, t271, -t282, t170, 0, 0, 0, 0, 0, 0, t176, t181, t173, t149; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t387, -t386, 0, t342, 0, 0, 0, 0, 0, 0, t328, -t478, 0, -t492, 0, 0, 0, 0, 0, 0, t281, -t280, t270, t182, 0, 0, 0, 0, 0, 0, t281, t270, t280, t169, 0, 0, 0, 0, 0, 0, t175, t180, t172, t148; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t410, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t241, 0, 0, 0, 0, 0, 0, 0, 0, 0, t220, 0, 0, 0, 0, 0, 0, t215, t234, t217, t159; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t387, 0, -t386, 0, t432, -t357, -t342, -pkin(5) * t342, 0, 0, t328, 0, -t478, 0, t490, t485, t492, pkin(5) * t492 + qJ(2) * t456 - t417 * t253, -t298, -t483, t282, t298, t482, 0, -t417 * t230 + t419 * t232 - t473, -t417 * t231 + t419 * t233 + t496, -t417 * t222 + t419 * t223 - t474, -pkin(5) * t182 - t164 * t417 + t174 * t419, -t298, t282, t483, 0, -t482, t298, -t198 * t417 + t199 * t419 - t473, -t186 * t417 + t187 * t419 - t474, -t201 * t417 + t202 * t419 - t496, -pkin(5) * t169 - t155 * t417 + t158 * t419, -t212 * t417 + t214 * t419, -t196 * t417 + t197 * t419, -t225 * t417 + t227 * t419, -t211 * t417 + t213 * t419, -t224 * t417 + t226 * t419, -t243 * t417 + t244 * t419, -pkin(5) * t175 - t150 * t417 + t151 * t419, -pkin(5) * t180 - t152 * t417 + t154 * t419, -pkin(5) * t172 - t144 * t417 + t146 * t419, -pkin(5) * t148 - t142 * t417 + t143 * t419; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t386, 0, t387, 0, t357, t432, t343, pkin(5) * t343, 0, 0, t478, 0, t328, 0, -t485, t490, t229, pkin(5) * t229 + qJ(2) * t461 + t253 * t419, t295, t484, -t280, -t295, -t281, 0, t230 * t419 + t232 * t417 - t278, t231 * t419 + t233 * t417 + t495, t222 * t419 + t223 * t417 + t269, pkin(5) * t183 + t164 * t419 + t174 * t417, t295, -t280, -t484, 0, t281, -t295, t198 * t419 + t199 * t417 - t278, t186 * t419 + t187 * t417 + t269, t201 * t419 + t202 * t417 - t495, pkin(5) * t170 + t155 * t419 + t158 * t417, t212 * t419 + t214 * t417, t196 * t419 + t197 * t417, t225 * t419 + t227 * t417, t211 * t419 + t213 * t417, t224 * t419 + t226 * t417, t243 * t419 + t244 * t417, pkin(5) * t176 + t150 * t419 + t151 * t417, pkin(5) * t181 + t152 * t419 + t154 * t417, pkin(5) * t173 + t144 * t419 + t146 * t417, pkin(5) * t149 + t142 * t419 + t143 * t417; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t388, t389, 0, 0, 0, 0, 0, 0, 0, qJDD(1), pkin(1) * t382 - t318, -pkin(1) * t381 - t319, 0, -pkin(1) * t265, t402, 0.2e1 * t437, 0, t403, 0, 0, -t305 * t414 + t441, (t305 - t411) * t412 + t487, t242 + t442, pkin(1) * t209 - pkin(2) * t305 + qJ(3) * t242, t402, 0, -0.2e1 * t437, 0, 0, t403, (t288 + t398) * t414 + t441, t250 * t412 + t251 * t414 + t442, (t287 + (pkin(2) + t475) * qJDD(1)) * t412 - t487, pkin(1) * t189 + qJ(3) * t221 + (-pkin(2) + t431) * t286, t291 * t414 + t292 * t412, t258 * t414 + t260 * t412, t273 * t414 + t276 * t412, t289 * t414 + t290 * t412, t272 * t414 + t275 * t412, t303 * t414 + t304 * t412, pkin(1) * t194 + pkin(2) * t312 + qJ(3) * t216 + t188 * t414 + t200 * t412, pkin(1) * t207 + pkin(2) * t314 + qJ(3) * t237 + t193 * t414 + t206 * t412, pkin(1) * t191 + pkin(2) * t300 + qJ(3) * t218 + t163 * t414 + t168 * t412, pkin(1) * t156 - pkin(2) * t256 + qJ(3) * t160 + t166 * t414 + t171 * t412;];
tauB_reg = t1;
