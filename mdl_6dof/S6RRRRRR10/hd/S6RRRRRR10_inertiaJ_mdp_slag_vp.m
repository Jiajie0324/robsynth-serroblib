% Calculate joint inertia matrix for
% S6RRRRRR10
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [14x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,alpha4,d1,d2,d3,d4,d5,d6]';
% MDP [38x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S6RRRRRR10_convert_par2_MPV_fixb.m
% 
% Output:
% Mq [6x6]
%   inertia matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 06:28
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6RRRRRR10_inertiaJ_mdp_slag_vp(qJ, pkin, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(14,1),zeros(38,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR10_inertiaJ_mdp_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [14 1]), ...
  'S6RRRRRR10_inertiaJ_mdp_slag_vp: pkin has to be [14x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [38 1]), ...
  'S6RRRRRR10_inertiaJ_mdp_slag_vp: MDP has to be [38x1] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_fixb_mdp_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 06:17:02
% EndTime: 2019-03-10 06:17:13
% DurationCPUTime: 3.76s
% Computational Cost: add. (8938->510), mult. (24724->741), div. (0->0), fcn. (28984->16), ass. (0->213)
t305 = sin(pkin(8));
t433 = 0.2e1 * t305;
t311 = sin(qJ(6));
t316 = cos(qJ(6));
t327 = -(MDP(37) * t311 + MDP(38) * t316) * pkin(14) + t311 * MDP(34) + t316 * MDP(35);
t310 = cos(pkin(6));
t307 = sin(pkin(6));
t320 = cos(qJ(2));
t398 = t307 * t320;
t315 = sin(qJ(2));
t421 = pkin(1) * t315;
t288 = pkin(10) * t398 + t310 * t421;
t306 = sin(pkin(7));
t309 = cos(pkin(7));
t395 = t309 * t320;
t340 = t306 * t310 + t307 * t395;
t257 = t340 * pkin(11) + t288;
t420 = pkin(1) * t320;
t296 = t310 * t420;
t399 = t307 * t315;
t262 = pkin(2) * t310 + t296 + (-pkin(11) * t309 - pkin(10)) * t399;
t270 = (-pkin(11) * t306 * t315 - pkin(2) * t320 - pkin(1)) * t307;
t314 = sin(qJ(3));
t319 = cos(qJ(3));
t234 = t319 * t257 + (t262 * t309 + t270 * t306) * t314;
t280 = -t306 * t398 + t309 * t310;
t308 = cos(pkin(8));
t293 = t314 * t399;
t432 = -t340 * t319 + t293;
t333 = t432 * t308;
t321 = t280 * t305 - t333;
t220 = t321 * pkin(12) + t234;
t313 = sin(qJ(4));
t318 = cos(qJ(4));
t396 = t309 * t319;
t400 = t306 * t319;
t232 = -t257 * t314 + t262 * t396 + t270 * t400;
t401 = t306 * t314;
t259 = t310 * t401 + (t314 * t395 + t315 * t319) * t307;
t416 = pkin(12) * t308;
t223 = pkin(3) * t280 - t259 * t416 + t232;
t241 = -t306 * t262 + t309 * t270;
t417 = pkin(12) * t305;
t225 = pkin(3) * t432 - t259 * t417 + t241;
t347 = t223 * t308 + t225 * t305;
t209 = -t313 * t220 + t347 * t318;
t287 = pkin(2) * t309 * t314 + pkin(11) * t400;
t397 = t308 * t319;
t352 = t306 * t397;
t256 = (t305 * t309 + t352) * pkin(12) + t287;
t295 = pkin(2) * t396;
t261 = pkin(3) * t309 + t295 + (-pkin(11) - t416) * t401;
t269 = (-pkin(3) * t319 - t314 * t417 - pkin(2)) * t306;
t346 = t261 * t308 + t269 * t305;
t231 = -t313 * t256 + t346 * t318;
t431 = 2 * MDP(16);
t430 = 2 * MDP(17);
t429 = 2 * MDP(23);
t428 = 2 * MDP(24);
t427 = -2 * MDP(28);
t426 = 2 * MDP(30);
t425 = 2 * MDP(31);
t424 = -2 * MDP(33);
t423 = 0.2e1 * MDP(37);
t422 = 0.2e1 * MDP(38);
t419 = pkin(3) * t313;
t418 = pkin(3) * t318;
t415 = pkin(13) * t311;
t414 = pkin(13) * t316;
t317 = cos(qJ(5));
t413 = pkin(13) * t317;
t412 = MDP(30) * pkin(4);
t411 = pkin(4) * MDP(31);
t210 = t220 * t318 + t347 * t313;
t243 = -t280 * t308 - t305 * t432;
t207 = -pkin(13) * t243 + t210;
t211 = -t223 * t305 + t308 * t225;
t402 = t305 * t318;
t236 = t259 * t313 - t280 * t402 + t318 * t333;
t237 = t259 * t318 + t321 * t313;
t208 = pkin(4) * t236 - pkin(13) * t237 + t211;
t312 = sin(qJ(5));
t201 = -t207 * t312 + t208 * t317;
t199 = -pkin(5) * t236 - t201;
t410 = t199 * t311;
t409 = t199 * t316;
t240 = -t261 * t305 + t308 * t269;
t258 = -t309 * t402 + t313 * t401 - t318 * t352;
t403 = t305 * t313;
t260 = t309 * t403 + (t313 * t397 + t314 * t318) * t306;
t226 = pkin(4) * t258 - pkin(13) * t260 + t240;
t233 = t256 * t318 + t346 * t313;
t278 = t305 * t400 - t308 * t309;
t228 = -pkin(13) * t278 + t233;
t216 = t226 * t317 - t228 * t312;
t212 = -pkin(5) * t258 - t216;
t408 = t212 * t311;
t407 = t212 * t316;
t353 = pkin(12) * t402;
t276 = t353 + (pkin(13) + t419) * t308;
t277 = (-pkin(4) * t318 - pkin(13) * t313 - pkin(3)) * t305;
t250 = -t276 * t312 + t277 * t317;
t248 = pkin(5) * t402 - t250;
t406 = t248 * t311;
t405 = t248 * t316;
t300 = t306 ^ 2;
t404 = t300 * t314;
t394 = t310 * MDP(8);
t393 = MDP(18) * t237;
t392 = MDP(18) * t260;
t391 = MDP(19) * t237;
t390 = MDP(19) * t260;
t389 = MDP(20) * t278;
t388 = MDP(20) * t313;
t387 = MDP(21) * t243;
t386 = MDP(21) * t278;
t385 = MDP(21) * t308;
t384 = MDP(29) * t318;
t246 = t260 * t317 - t278 * t312;
t239 = t246 * t316 + t258 * t311;
t383 = MDP(32) * t239;
t282 = t308 * t312 + t317 * t403;
t264 = t282 * t316 - t311 * t402;
t382 = MDP(32) * t264;
t381 = MDP(32) * t311;
t380 = MDP(32) * t316;
t379 = MDP(36) * t317;
t222 = t237 * t317 - t243 * t312;
t214 = t222 * t311 - t236 * t316;
t378 = t214 * MDP(35);
t215 = t222 * t316 + t236 * t311;
t377 = t215 * MDP(34);
t221 = t237 * t312 + t243 * t317;
t376 = t221 * MDP(36);
t375 = t222 * MDP(26);
t374 = t222 * MDP(27);
t373 = t236 * MDP(29);
t238 = t246 * t311 - t316 * t258;
t372 = t238 * MDP(35);
t371 = t239 * MDP(34);
t370 = t243 * MDP(20);
t245 = t260 * t312 + t317 * t278;
t369 = t245 * MDP(36);
t368 = t246 * MDP(25);
t367 = t246 * MDP(26);
t366 = t246 * MDP(27);
t365 = t258 * MDP(29);
t364 = t259 * MDP(11);
t263 = t282 * t311 + t316 * t402;
t363 = t263 * MDP(35);
t362 = t264 * MDP(34);
t361 = t278 * MDP(22);
t360 = t280 * MDP(15);
t281 = -t317 * t308 + t312 * t403;
t359 = t281 * MDP(36);
t358 = t282 * MDP(25);
t357 = t282 * MDP(26);
t356 = t282 * MDP(27);
t355 = t308 * MDP(22);
t354 = t309 * MDP(15);
t351 = MDP(7) * t398;
t350 = MDP(33) * t311 * t316;
t349 = pkin(13) * MDP(30) - MDP(27);
t348 = pkin(13) * MDP(31) - MDP(28);
t202 = t207 * t317 + t208 * t312;
t217 = t226 * t312 + t228 * t317;
t251 = t276 * t317 + t277 * t312;
t294 = pkin(12) * t403;
t283 = t308 * t418 - t294;
t286 = t308 * t419 + t353;
t345 = -t283 * MDP(23) + t286 * MDP(24);
t344 = MDP(34) * t316 - MDP(35) * t311;
t290 = -pkin(5) * t317 - pkin(14) * t312 - pkin(4);
t271 = t290 * t316 - t311 * t413;
t272 = t290 * t311 + t316 * t413;
t342 = MDP(37) * t271 - MDP(38) * t272;
t275 = t294 + (-pkin(4) - t418) * t308;
t339 = -MDP(26) + t344;
t338 = (MDP(13) * t314 + MDP(14) * t319) * t306;
t337 = t342 - t412;
t336 = t250 * MDP(30) - t251 * MDP(31) + t356;
t206 = pkin(4) * t243 - t209;
t227 = pkin(4) * t278 - t231;
t332 = t237 * MDP(20) - t243 * MDP(22) + t209 * MDP(23) - t210 * MDP(24);
t331 = t260 * MDP(20) + t231 * MDP(23) - t233 * MDP(24) - t361;
t330 = t201 * MDP(30) - t202 * MDP(31) + t373 + t374;
t329 = t216 * MDP(30) - t217 * MDP(31) + t365 + t366;
t328 = t432 * MDP(14);
t326 = -t281 * MDP(28) + t336 - t385;
t200 = pkin(14) * t236 + t202;
t203 = pkin(5) * t221 - pkin(14) * t222 + t206;
t197 = -t200 * t311 + t203 * t316;
t198 = t200 * t316 + t203 * t311;
t325 = t197 * MDP(37) - t198 * MDP(38) + t376 + t377 - t378;
t213 = pkin(14) * t258 + t217;
t218 = pkin(5) * t245 - pkin(14) * t246 + t227;
t204 = -t213 * t311 + t218 * t316;
t205 = t213 * t316 + t218 * t311;
t324 = t204 * MDP(37) - t205 * MDP(38) + t369 + t371 - t372;
t247 = pkin(5) * t281 - pkin(14) * t282 + t275;
t249 = -pkin(14) * t402 + t251;
t229 = t247 * t316 - t249 * t311;
t230 = t247 * t311 + t249 * t316;
t323 = t229 * MDP(37) - t230 * MDP(38) + t359 + t362 - t363;
t322 = -MDP(28) + t327;
t304 = t316 ^ 2;
t303 = t312 ^ 2;
t302 = t311 ^ 2;
t301 = t307 ^ 2;
t299 = t305 ^ 2;
t285 = -pkin(10) * t399 + t296;
t284 = -pkin(11) * t401 + t295;
t1 = [t243 ^ 2 * MDP(22) + t222 ^ 2 * MDP(25) + MDP(1) + (0.2e1 * t351 + t394) * t310 + (-0.2e1 * t328 + t360) * t280 + (-0.2e1 * t370 + t393) * t237 + (MDP(32) * t215 + t214 * t424) * t215 + (0.2e1 * t310 * t307 * MDP(6) + (MDP(4) * t315 + 0.2e1 * MDP(5) * t320) * t301) * t315 + (-0.2e1 * MDP(12) * t432 + 0.2e1 * t280 * MDP(13) + t364) * t259 + (t373 + 0.2e1 * t374 + 0.2e1 * t387 - 0.2e1 * t391) * t236 + (t236 * t427 - 0.2e1 * t375 + t376 + 0.2e1 * t377 - 0.2e1 * t378) * t221 + (-t234 * t280 + t241 * t259) * t430 + (t210 * t243 + t211 * t237) * t428 + (-t209 * t243 + t211 * t236) * t429 + (t201 * t236 + t206 * t221) * t426 + (-t202 * t236 + t206 * t222) * t425 + (t197 * t221 + t199 * t214) * t423 + (-t198 * t221 + t199 * t215) * t422 + 0.2e1 * (-t288 * t310 - t301 * t421) * MDP(10) + (t232 * t280 + t241 * t432) * t431 + 0.2e1 * (t285 * t310 + t301 * t420) * MDP(9); t394 + (-t214 * t239 - t215 * t238) * MDP(33) + (t197 * t245 + t199 * t238 + t204 * t221 + t212 * t214) * MDP(37) + (-t214 * t245 - t221 * t238) * MDP(35) + (t215 * t245 + t221 * t239) * MDP(34) + (-pkin(2) * t306 * t432 + t232 * t309 - t241 * t400 + t284 * t280) * MDP(16) + (-t198 * t245 + t199 * t239 - t205 * t221 + t212 * t215) * MDP(38) + (-t221 * t246 - t222 * t245) * MDP(26) + (t201 * t258 + t206 * t245 + t216 * t236 + t221 * t227) * MDP(30) + (-t221 * t258 - t236 * t245) * MDP(28) + (t222 * t258 + t236 * t246) * MDP(27) + (-t234 * t309 - t280 * t287 + (-pkin(2) * t259 + t241 * t314) * t306) * MDP(17) + (-t202 * t258 + t206 * t246 - t217 * t236 + t222 * t227) * MDP(31) + (-t236 * t260 - t237 * t258) * MDP(19) + t351 + (t259 * t309 + t280 * t401) * MDP(13) + (-t309 * t293 + (t280 * t306 + t309 * t340) * t319) * MDP(14) + MDP(6) * t399 + t364 * t401 + (t210 * t278 + t211 * t260 + t233 * t243 + t237 * t240) * MDP(24) + (-t209 * t278 + t211 * t258 - t231 * t243 + t236 * t240) * MDP(23) + (t236 * t278 + t243 * t258) * MDP(21) + (-t237 * t278 - t243 * t260) * MDP(20) + t285 * MDP(9) - t288 * MDP(10) + (t319 * t259 - t314 * t432) * t306 * MDP(12) + t280 * t354 + t243 * t361 + t236 * t365 + t222 * t368 + t221 * t369 + t215 * t383 + t237 * t392; t278 ^ 2 * MDP(22) + t246 ^ 2 * MDP(25) + MDP(8) + (MDP(11) * t314 + 0.2e1 * MDP(12) * t319) * t404 + (-0.2e1 * t389 + t392) * t260 + (t238 * t424 + t383) * t239 + (0.2e1 * t338 + t354) * t309 + (t365 + 0.2e1 * t366 + 0.2e1 * t386 - 0.2e1 * t390) * t258 + (t258 * t427 - 0.2e1 * t367 + t369 + 0.2e1 * t371 - 0.2e1 * t372) * t245 + (t233 * t278 + t240 * t260) * t428 + (-t231 * t278 + t240 * t258) * t429 + (-t217 * t258 + t227 * t246) * t425 + (t216 * t258 + t227 * t245) * t426 + (-t205 * t245 + t212 * t239) * t422 + (t204 * t245 + t212 * t238) * t423 + (pkin(2) * t300 * t319 + t284 * t309) * t431 + (-pkin(2) * t404 - t287 * t309) * t430; t221 * t359 + t215 * t382 + t222 * t358 + t232 * MDP(16) - t234 * MDP(17) + t259 * MDP(13) + (-t214 * t264 - t215 * t263) * MDP(33) + t360 + (t197 * t281 + t199 * t263 + t214 * t248 + t221 * t229) * MDP(37) + (-t214 * t281 - t221 * t263) * MDP(35) + (t215 * t281 + t221 * t264) * MDP(34) + (-t198 * t281 + t199 * t264 + t215 * t248 - t221 * t230) * MDP(38) + (-t221 * t282 - t222 * t281) * MDP(26) + (t206 * t281 + t221 * t275) * MDP(30) + (t206 * t282 + t222 * t275) * MDP(31) - t328 + t345 * t243 + t332 * t308 + t326 * t236 + ((-t236 * MDP(23) - t237 * MDP(24)) * pkin(3) + (-MDP(19) * t236 + MDP(24) * t211 - t370 + t393) * t313 + (-t211 * MDP(23) + t221 * MDP(28) - t330 - t387 + t391) * t318) * t305; t245 * t359 + t239 * t382 + t246 * t358 + (-t238 * t264 - t239 * t263) * MDP(33) + (t204 * t281 + t212 * t263 + t229 * t245 + t238 * t248) * MDP(37) + (-t238 * t281 - t245 * t263) * MDP(35) + (t239 * t281 + t245 * t264) * MDP(34) + (-t205 * t281 + t212 * t264 - t230 * t245 + t239 * t248) * MDP(38) + (-t245 * t282 - t246 * t281) * MDP(26) + t284 * MDP(16) - t287 * MDP(17) + t354 + (t227 * t281 + t245 * t275) * MDP(30) + (t227 * t282 + t246 * t275) * MDP(31) + t345 * t278 + t331 * t308 + t338 + t326 * t258 + ((-MDP(23) * t258 - MDP(24) * t260) * pkin(3) + (-MDP(19) * t258 + MDP(24) * t240 - t389 + t392) * t313 + (-MDP(23) * t240 + t245 * MDP(28) - t329 - t386 + t390) * t318) * t305; t299 * t313 ^ 2 * MDP(18) + t282 ^ 2 * MDP(25) + MDP(15) + (t388 * t433 + t355) * t308 + (t263 * t424 + t382) * t264 + ((-t356 + t385) * t433 + (0.2e1 * MDP(19) * t313 + t384) * t299) * t318 + (0.2e1 * MDP(28) * t402 - 0.2e1 * t357 + t359 + 0.2e1 * t362 - 0.2e1 * t363) * t281 + (t283 * t308 + t299 * t418) * t429 + (-t286 * t308 - t299 * t419) * t428 + (-t250 * t402 + t275 * t281) * t426 + (t251 * t402 + t275 * t282) * t425 + (t229 * t281 + t248 * t263) * t423 + (-t230 * t281 + t248 * t264) * t422; -t222 * t411 - t236 * MDP(21) + t337 * t221 + (-t206 * MDP(30) - t348 * t236 - t325 + t375) * t317 + (t222 * MDP(25) + t206 * MDP(31) + t215 * t380 + (-t214 * t316 - t215 * t311) * MDP(33) + (pkin(13) * t214 + t410) * MDP(37) + (pkin(13) * t215 + t409) * MDP(38) - t349 * t236 + t339 * t221) * t312 + t332; -t246 * t411 - t258 * MDP(21) + t337 * t245 + (-t227 * MDP(30) - t348 * t258 - t324 + t367) * t317 + (t368 + t227 * MDP(31) + t239 * t380 + (-t238 * t316 - t239 * t311) * MDP(33) + (pkin(13) * t238 + t408) * MDP(37) + (pkin(13) * t239 + t407) * MDP(38) - t349 * t258 + t339 * t245) * t312 + t331; -t282 * t411 + t355 + (MDP(21) * t318 + t388) * t305 + t337 * t281 + (-t275 * MDP(30) + t348 * t402 - t323 + t357) * t317 + (t358 + t275 * MDP(31) + t264 * t380 + (-t263 * t316 - t264 * t311) * MDP(33) + (pkin(13) * t263 + t406) * MDP(37) + (pkin(13) * t264 + t405) * MDP(38) + t349 * t402 + t339 * t281) * t312 - t345; MDP(22) + (t379 + (2 * t412)) * t317 + (MDP(32) * t304 + MDP(25) - 0.2e1 * t350) * t303 + (-t271 * t317 + t303 * t415) * t423 + (t272 * t317 + t303 * t414) * t422 + 0.2e1 * (-t317 * t339 - t411) * t312; t215 * t381 + (-t214 * t311 + t215 * t316) * MDP(33) + (-pkin(5) * t214 - t409) * MDP(37) + (-pkin(5) * t215 + t410) * MDP(38) + t322 * t221 + t330; t239 * t381 + (-t238 * t311 + t239 * t316) * MDP(33) + (-pkin(5) * t238 - t407) * MDP(37) + (-pkin(5) * t239 + t408) * MDP(38) + t322 * t245 + t329; -t305 * t384 + t264 * t381 + (-t263 * t311 + t264 * t316) * MDP(33) + (-pkin(5) * t263 - t405) * MDP(37) + (-pkin(5) * t264 + t406) * MDP(38) + t322 * t281 + t336; (-t327 - t348) * t317 + (t311 * t380 + (-t302 + t304) * MDP(33) + (-pkin(5) * t311 - t414) * MDP(37) + (-pkin(5) * t316 + t415) * MDP(38) - t349) * t312; 0.2e1 * t350 + MDP(32) * t302 + MDP(29) + 0.2e1 * (MDP(37) * t316 - MDP(38) * t311) * pkin(5); t325; t324; t323; t312 * t344 + t342 - t379; t327; MDP(36);];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t1(1) t1(2) t1(4) t1(7) t1(11) t1(16); t1(2) t1(3) t1(5) t1(8) t1(12) t1(17); t1(4) t1(5) t1(6) t1(9) t1(13) t1(18); t1(7) t1(8) t1(9) t1(10) t1(14) t1(19); t1(11) t1(12) t1(13) t1(14) t1(15) t1(20); t1(16) t1(17) t1(18) t1(19) t1(20) t1(21);];
Mq  = res;