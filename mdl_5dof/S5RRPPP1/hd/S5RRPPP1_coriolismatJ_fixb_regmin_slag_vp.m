% Calculate minimal parameter regressor of coriolis matrix for
% S5RRPPP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha3,d1,d2,theta3]';
% 
% Output:
% cmat_reg [(5*%NQJ)%x22]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 19:25
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RRPPP1_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPPP1_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPPP1_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRPPP1_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 19:24:33
% EndTime: 2019-12-31 19:24:46
% DurationCPUTime: 5.45s
% Computational Cost: add. (4262->463), mult. (11322->593), div. (0->0), fcn. (11194->6), ass. (0->326)
t243 = sin(pkin(8));
t244 = sin(pkin(5));
t246 = cos(pkin(5));
t245 = cos(pkin(8));
t248 = cos(qJ(2));
t362 = t248 * t245;
t222 = t246 * t362;
t247 = sin(qJ(2));
t366 = t247 * t243;
t183 = -t222 + t366;
t239 = t244 ^ 2;
t221 = t239 * t366;
t241 = t246 ^ 2;
t223 = t241 * t366;
t145 = t222 - t223 - t221;
t424 = -t145 / 0.2e1;
t287 = (t183 / 0.2e1 + t424) * t245;
t363 = t248 * t243;
t334 = t246 * t363;
t364 = t247 * t245;
t184 = t334 + t364;
t423 = t184 / 0.2e1;
t144 = t334 + (t239 + t241) * t364;
t425 = t144 / 0.2e1;
t442 = (t287 - (t423 + t425) * t243) * t244;
t445 = t442 * qJD(3);
t238 = t243 ^ 2;
t240 = t245 ^ 2;
t198 = (t238 + t240) * t239;
t342 = t198 * qJD(2);
t444 = -qJD(1) * t442 + t342;
t277 = t144 * t184 - t145 * t183;
t434 = qJD(1) * t277;
t443 = -qJD(2) * t442 + t434;
t348 = qJD(3) * t244;
t330 = t246 * t348;
t379 = t239 * t245;
t440 = (-qJD(4) * t379 + t330) * t243;
t365 = t247 * t244;
t200 = -pkin(2) * t248 - qJ(3) * t365 - pkin(1);
t307 = qJ(3) * t246 + pkin(7);
t203 = t307 * t247;
t439 = (t200 * t244 - t203 * t246) * t245;
t377 = t243 * t244;
t323 = t377 / 0.2e1;
t34 = -t244 * t287 + (t144 + t184) * t323;
t435 = qJD(1) * t34 + t342;
t418 = t239 / 0.2e1;
t275 = (t418 - 0.1e1 / 0.2e1) * t363;
t315 = -t364 / 0.2e1;
t426 = -t144 / 0.2e1;
t249 = (t426 + t315) * t246 + t275;
t392 = qJD(3) * t249;
t220 = t246 * t366;
t419 = -t220 / 0.2e1;
t259 = (0.1e1 / 0.2e1 + t418) * t362 + t419;
t369 = t246 * t183;
t250 = t369 / 0.2e1 + t259;
t433 = qJD(4) * t250;
t233 = t363 / 0.2e1;
t370 = t245 * t246;
t316 = t370 / 0.2e1;
t413 = -t246 / 0.2e1;
t252 = t144 * t413 + t239 * t233 + t247 * t316 + t233;
t358 = t252 * qJD(3);
t234 = -t362 / 0.2e1;
t217 = t239 * t234;
t313 = t362 / 0.2e1;
t270 = t217 + t419 + t313;
t253 = -t369 / 0.2e1 + t270;
t432 = t253 * qJD(4);
t431 = t277 * qJD(3);
t340 = t246 * qJD(2);
t331 = t244 * t340;
t208 = t243 * t331;
t430 = qJD(1) * t249 - t208;
t210 = t245 * t331;
t429 = qJD(1) * t250 - t210;
t352 = qJD(1) * t248;
t332 = t244 * t352;
t124 = t144 * t332;
t300 = qJD(2) * t249 + t124;
t301 = qJD(2) * t252 + t124;
t292 = t183 * t332;
t428 = qJD(2) * t250 - t292;
t427 = qJD(2) * t253 + t292;
t190 = t243 * t203;
t422 = -t190 / 0.2e1;
t372 = t244 * t248;
t202 = t247 * pkin(2) - qJ(3) * t372;
t194 = t246 * t202;
t421 = t194 / 0.2e1;
t204 = t307 * t248;
t420 = t204 / 0.2e1;
t417 = -t243 / 0.2e1;
t416 = t243 / 0.2e1;
t415 = -t245 / 0.2e1;
t414 = t245 / 0.2e1;
t412 = t246 / 0.2e1;
t411 = -t247 / 0.2e1;
t410 = -t248 / 0.2e1;
t186 = t246 * t364 + t363;
t409 = t186 * pkin(3);
t408 = t186 * pkin(4);
t187 = -t220 + t362;
t407 = t187 * pkin(4);
t406 = t247 * pkin(3);
t405 = pkin(3) + qJ(5);
t191 = t243 * t204;
t356 = pkin(3) * t372 + t191;
t45 = t203 * t370 + t184 * pkin(4) + (qJ(5) * t248 - t200 * t245) * t244 + t356;
t129 = t246 * t200 + t203 * t244;
t266 = -qJ(4) * t184 + t129;
t46 = t405 * t183 + t266;
t368 = t246 * t204;
t288 = t245 * t368 - t190;
t371 = t245 * t202;
t47 = t407 + (-t405 * t247 - t371) * t244 + t288;
t374 = t244 * t204;
t137 = t194 + t374;
t381 = t187 * qJ(4);
t265 = t137 - t381;
t48 = t405 * t186 + t265;
t193 = t245 * t204;
t376 = t243 * t246;
t85 = t200 * t377 - t203 * t376 + t193;
t68 = qJ(4) * t372 - t85;
t50 = -t183 * pkin(4) - t68;
t375 = t244 * t202;
t175 = t243 * t375;
t177 = t243 * t368;
t192 = t245 * t203;
t92 = -t192 - t177 + t175;
t70 = -qJ(4) * t365 - t92;
t51 = -t70 - t408;
t1 = t45 * t47 + t46 * t48 + t50 * t51;
t404 = t1 * qJD(1);
t2 = -t183 * t51 + t184 * t47 - t186 * t50 + t187 * t45;
t403 = t2 * qJD(1);
t3 = t48 * t183 + t46 * t186 + (-t247 * t45 + t248 * t47) * t244;
t402 = t3 * qJD(1);
t61 = pkin(3) * t183 + t266;
t62 = t265 + t409;
t69 = t356 - t439;
t71 = (-t371 - t406) * t244 + t288;
t6 = t61 * t62 + t68 * t70 + t69 * t71;
t401 = t6 * qJD(1);
t7 = -t48 * t184 - t46 * t187 + (t247 * t50 - t248 * t51) * t244;
t400 = t7 * qJD(1);
t23 = t144 * t45 + t145 * t50;
t399 = qJD(1) * t23;
t28 = t144 * t69 - t145 * t68;
t398 = qJD(1) * t28;
t84 = -t191 + t439;
t29 = -t144 * t84 + t145 * t85;
t397 = qJD(1) * t29;
t30 = -t61 * t184 + t68 * t372;
t396 = qJD(1) * t30;
t388 = t145 * t246;
t326 = -t388 / 0.2e1;
t353 = t220 / 0.2e1 + t234;
t80 = t239 * t313 + t326 + t353;
t391 = qJD(3) * t80;
t12 = t183 * t70 + t184 * t71 + t186 * t68 + t187 * t69;
t390 = t12 * qJD(1);
t308 = -qJ(4) * t243 - pkin(2);
t143 = (-t405 * t245 + t308) * t244;
t389 = t143 * t184;
t15 = -t62 * t184 - t61 * t187 + (-t247 * t68 + t248 * t70) * t244;
t387 = t15 * qJD(1);
t16 = -t62 * t183 - t61 * t186 + (t247 * t69 - t248 * t71) * t244;
t386 = t16 * qJD(1);
t164 = (-pkin(3) * t245 + t308) * t244;
t385 = t164 * t184;
t91 = t190 + (-t368 + t375) * t245;
t17 = t129 * t137 + t84 * t91 + t85 * t92;
t384 = t17 * qJD(1);
t18 = -t183 * t92 - t184 * t91 - t186 * t85 - t187 * t84;
t383 = t18 * qJD(1);
t382 = t183 * t243;
t242 = t248 ^ 2;
t380 = t239 * t242;
t24 = -t129 * t186 - t137 * t183 - t84 * t365 + t91 * t372;
t378 = t24 * qJD(1);
t373 = t244 * t245;
t367 = t246 * t248;
t25 = t129 * t187 + t137 * t184 + (-t247 * t85 + t248 * t92) * t244;
t361 = t25 * qJD(1);
t26 = t46 * t183 + t45 * t372;
t360 = t26 * qJD(1);
t27 = -t46 * t184 - t50 * t372;
t359 = t27 * qJD(1);
t79 = t326 + t259;
t357 = t79 * qJD(3);
t195 = t198 * qJD(3);
t345 = qJD(4) * t246;
t355 = t345 * t373 + t195;
t205 = t238 * t239 + t241;
t211 = t245 * t330;
t354 = t205 * qJD(4) + t211;
t189 = pkin(2) * t376 + qJ(3) * t373;
t351 = qJD(2) * t244;
t350 = qJD(2) * t247;
t349 = qJD(2) * t248;
t347 = qJD(4) * t183;
t346 = qJD(4) * t244;
t344 = qJD(5) * t184;
t343 = qJD(5) * t246;
t236 = -t247 ^ 2 + t242;
t341 = t236 * qJD(1);
t339 = pkin(1) * t247 * qJD(1);
t338 = pkin(1) * t352;
t337 = t407 / 0.2e1;
t336 = pkin(3) / 0.2e1 + qJ(5) / 0.2e1;
t335 = t243 * t379;
t333 = -pkin(2) * t245 - pkin(3);
t329 = t248 * t348;
t328 = t248 * t346;
t128 = t183 * t184 * qJD(1);
t227 = t243 * t348;
t327 = t247 * t352;
t325 = t388 / 0.2e1;
t324 = -t377 / 0.2e1;
t322 = t374 / 0.2e1;
t321 = -t373 / 0.2e1;
t320 = t373 / 0.2e1;
t319 = t372 / 0.2e1;
t318 = -t371 / 0.2e1;
t317 = t193 / 0.2e1;
t231 = t365 / 0.2e1;
t314 = -t363 / 0.2e1;
t310 = -t221 / 0.2e1 - t223 / 0.2e1;
t309 = t241 / 0.2e1 + t418;
t207 = qJD(2) * t335;
t156 = t184 * t321;
t88 = t156 + (t382 / 0.2e1 + t411) * t244;
t306 = qJD(1) * t88 - t207;
t261 = t184 * t414 - t382 / 0.2e1;
t89 = t244 * t261 + t231;
t305 = qJD(1) * t89 + t207;
t90 = (t411 + t261) * t244;
t304 = qJD(1) * t90 + t207;
t56 = qJD(1) * t80 - t210;
t81 = t325 + t270;
t302 = qJD(1) * t81 + t210;
t125 = t145 * t332;
t299 = qJD(2) * t79 + t125;
t298 = qJD(2) * t80 + t125;
t297 = qJD(2) * t89 - t128;
t296 = qJD(2) * t90 - t128;
t100 = t314 + t239 * t314 + (t315 + t423) * t246;
t295 = qJD(1) * t100 + t208;
t291 = t184 * t332;
t290 = t144 * t329;
t289 = t145 * t329;
t162 = -qJ(4) * t246 - t189;
t286 = t421 - t381 / 0.2e1;
t251 = t336 * t186 + t286;
t228 = qJ(3) * t377;
t134 = pkin(4) * t377 + t228 + (-qJ(5) + t333) * t246;
t142 = pkin(4) * t373 - t162;
t264 = t134 * t426 + t142 * t424;
t4 = (t50 * t415 + t45 * t417 + t420) * t244 + t251 + t264;
t53 = (t134 * t243 + t142 * t245) * t244;
t285 = -qJD(1) * t4 + qJD(2) * t53;
t58 = t134 * t246 + t143 * t373;
t256 = t175 / 0.2e1 - t177 / 0.2e1 - t192 / 0.2e1 - t408 / 0.2e1;
t267 = -t143 * t183 / 0.2e1 + t45 * t412;
t8 = (t247 * qJ(4) / 0.2e1 + t46 * t414 + t134 * t410) * t244 + t256 + t267;
t284 = -qJD(1) * t8 - qJD(2) * t58;
t255 = -t336 * t247 + t318;
t10 = t422 + t337 + t389 / 0.2e1 + (t317 - t50 / 0.2e1) * t246 + (t46 * t416 + t142 * t248 / 0.2e1 + t255) * t244;
t64 = -t142 * t246 + t143 * t377;
t283 = -qJD(1) * t10 - t64 * qJD(2);
t257 = t409 / 0.2e1 + t286;
t163 = t333 * t246 + t228;
t263 = t163 * t426 + t145 * t162 / 0.2e1;
t13 = (t68 * t414 + t69 * t417 + t420) * t244 + t257 + t263;
t86 = t162 * t373 - t163 * t377;
t282 = -qJD(1) * t13 - qJD(2) * t86;
t268 = t318 - t406 / 0.2e1;
t19 = t422 + t385 / 0.2e1 + (t317 + t68 / 0.2e1) * t246 + (t162 * t410 + t61 * t416 + t268) * t244;
t93 = t162 * t246 + t164 * t377;
t281 = -qJD(1) * t19 - qJD(2) * t93;
t280 = qJD(2) * t34 + t434;
t188 = pkin(2) * t370 - t228;
t112 = (-t188 * t243 + t189 * t245) * t244;
t262 = t188 * t425 + t189 * t424;
t21 = t421 + (t85 * t415 + t84 * t416 + t420) * t244 + t262;
t274 = qJD(1) * t21 - qJD(2) * t112;
t135 = (-t243 * t184 + t367) * t244;
t158 = t184 ^ 2 + t380;
t73 = qJD(1) * t158 - qJD(2) * t135;
t98 = qJD(1) * t135 - qJD(2) * t205;
t136 = (t245 * t183 + t367) * t244;
t157 = t183 ^ 2 + t380;
t273 = qJD(1) * t157 - qJD(2) * t136;
t206 = t239 * t240 + t241;
t272 = qJD(1) * t136 - qJD(2) * t206;
t271 = t204 * t316 + t422;
t269 = t158 * qJD(4) - t289;
t117 = t334 + (0.1e1 / 0.2e1 + t309) * t364;
t106 = qJD(1) * t117 + t243 * t351;
t118 = t222 - t366 / 0.2e1 + t310;
t260 = qJD(1) * t118 + t245 * t351;
t254 = t184 * t347 - t290;
t199 = t332 - t340;
t147 = t309 * t364 + t315;
t146 = t366 / 0.2e1 + t310;
t140 = t147 * qJD(3);
t139 = t147 * qJD(4);
t127 = t136 * qJD(5);
t126 = t135 * qJD(4);
t116 = t117 * qJD(4);
t115 = t117 * qJD(3);
t105 = t184 * t413 + t246 * t315 + t275;
t87 = t183 * t323 + t156 + t231;
t82 = t217 + t325 + t353;
t31 = t34 * qJD(3);
t22 = t85 * t320 + t84 * t324 - t262 + t322 + t421;
t20 = -t385 / 0.2e1 + t61 * t324 + t162 * t319 + t68 * t413 + t268 * t244 + t271;
t14 = t68 * t321 + t69 * t323 + t257 - t263 + t322;
t11 = -t389 / 0.2e1 + t46 * t324 - t142 * t372 / 0.2e1 + t50 * t412 + t337 + t255 * t244 + t271;
t9 = qJ(4) * t231 + t134 * t319 + t46 * t321 + t256 - t267;
t5 = t50 * t320 + t45 * t323 + t251 - t264 + t322;
t32 = [0, 0, 0, t247 * t349, t236 * qJD(2), 0, 0, 0, -pkin(1) * t350, -pkin(1) * t349, -t24 * qJD(2) + t290, t25 * qJD(2) + t289, qJD(2) * t18 + t431, qJD(2) * t17 + qJD(3) * t29, t12 * qJD(2) + t183 * t328 + t431, t16 * qJD(2) + t254, t15 * qJD(2) + t269, qJD(2) * t6 + qJD(3) * t28 + qJD(4) * t30, t2 * qJD(2) + t431 + (t344 + t347) * t372, t7 * qJD(2) - t183 * t344 + t269, t3 * qJD(2) + t157 * qJD(5) - t254, qJD(2) * t1 + qJD(3) * t23 + qJD(4) * t27 + qJD(5) * t26; 0, 0, 0, t327, t341, t349, -t350, 0, -pkin(7) * t349 - t339, pkin(7) * t350 - t338, t91 * t340 - t378 + t358 + (-pkin(2) * t186 - t137 * t245 + t188 * t247) * t351, -t92 * t340 + t361 + t357 + (-pkin(2) * t187 + t137 * t243 - t189 * t247) * t351, t383 + (-t186 * t189 - t187 * t188 + (-t243 * t91 + t245 * t92) * t244) * qJD(2) - t445, t384 + (-pkin(2) * t137 * t244 + t188 * t91 + t189 * t92) * qJD(2) + t22 * qJD(3), t390 + (t162 * t186 + t163 * t187 + (t243 * t71 - t245 * t70) * t244) * qJD(2) - t445 + t432, t386 + (-t164 * t186 + t246 * t71 + (t163 * t247 + t245 * t62) * t244) * qJD(2) - t358 + t87 * qJD(4), t387 + (-t164 * t187 - t246 * t70 + (-t162 * t247 - t243 * t62) * t244) * qJD(2) + t82 * qJD(3) - t126, t401 + (t162 * t70 + t163 * t71 + t164 * t62) * qJD(2) + t14 * qJD(3) + t20 * qJD(4), t403 + (t134 * t187 - t142 * t186 + (t243 * t47 + t245 * t51) * t244) * qJD(2) + t31 + t432 + t105 * qJD(5), t400 + (-t143 * t187 + t246 * t51 + (t142 * t247 - t243 * t48) * t244) * qJD(2) - t357 - t126 + t89 * qJD(5), t402 + (t143 * t186 - t246 * t47 + (-t134 * t247 - t245 * t48) * t244) * qJD(2) + t358 + t90 * qJD(4) - t127, t404 + (t134 * t47 + t142 * t51 + t143 * t48) * qJD(2) + t5 * qJD(3) + t11 * qJD(4) + t9 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t301, t299, t443, qJD(2) * t22 + t397, t443, -t301, t82 * qJD(2) - t125, qJD(2) * t14 + t139 + t398, t280, -t299, t301, qJD(2) * t5 + qJD(5) * t146 + t139 + t399; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t427, qJD(2) * t87 + t128, t73, qJD(2) * t20 + t140 + t396, t427, t73, t296, qJD(2) * t11 + t140 + t359; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t105 * qJD(2) + t291, t297, t273, qJD(2) * t9 + qJD(3) * t146 + t360; 0, 0, 0, -t327, -t341, 0, 0, 0, t339, t338, t378 + t392, -t361 + t391, -t445 - t383, -qJD(3) * t21 - t384, -t445 - t390 - t433, qJD(4) * t88 - t386 - t392, qJD(3) * t81 - t126 - t387, -qJD(3) * t13 - qJD(4) * t19 - t401, -qJD(5) * t100 + t31 - t403 - t433, qJD(5) * t90 - t126 - t391 - t400, qJD(4) * t89 - t127 + t392 - t402, -qJD(3) * t4 - qJD(4) * t10 - qJD(5) * t8 - t404; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t246 * t227, -t211, t195, t112 * qJD(3), t355, t440, t354, -qJD(3) * t86 - qJD(4) * t93, -t343 * t377 + t355, qJD(5) * t335 + t354, qJD(5) * t206 - t440, qJD(3) * t53 - qJD(4) * t64 - qJD(5) * t58; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t430, t56, t444, -t274, t444, -t430, t302, t282, t435, -t56, t430, t285; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t429, t306, -t98, t281, -t429, -t98, t305, t283; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t295, t304, -t272, t284; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t300, -t298, -t443, qJD(2) * t21 - t397, -t443, t300, -t81 * qJD(2) + t125, qJD(2) * t13 - t116 - t398, -t280, t298, -t300, qJD(2) * t4 - qJD(5) * t118 - t116 - t399; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t430, -t56, -t444, t274, -t444, t430, -t302, -t243 * t346 - t282, -t435, t56, -t430, (-qJD(4) * t243 - qJD(5) * t245) * t244 - t285; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t106, 0, 0, 0, -t106; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t260; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t428, -qJD(2) * t88 - t128, -t73, qJD(2) * t19 + t115 - t396, t428, -t73, -t297, t10 * qJD(2) + qJD(5) * t372 + t115 - t359; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t429, -t306, t98, t227 - t281, t429, t98, -t305, t227 - t283 - t343; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t106, 0, 0, 0, t106; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t199; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t100 * qJD(2) - t291, -t296, -t273, t8 * qJD(2) + t118 * qJD(3) - t328 - t360; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t295, -t304, t272, t245 * t348 - t284 + t345; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t260; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t199; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t32;