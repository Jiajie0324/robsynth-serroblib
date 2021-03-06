% Calculate minimal parameter regressor of coriolis matrix for
% S6RPRPRR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,d6,theta2]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x32]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 03:50
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RPRPRR5_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR5_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRR5_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPRR5_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 03:49:48
% EndTime: 2019-03-09 03:49:59
% DurationCPUTime: 8.23s
% Computational Cost: add. (6394->403), mult. (12714->544), div. (0->0), fcn. (15170->8), ass. (0->319)
t352 = qJD(3) - qJD(5);
t265 = cos(pkin(10));
t454 = pkin(7) + qJ(2);
t245 = t454 * t265;
t268 = sin(qJ(3));
t264 = sin(pkin(10));
t322 = t454 * t264;
t460 = cos(qJ(3));
t208 = t245 * t268 + t460 * t322;
t237 = t264 * t460 + t268 * t265;
t139 = -t237 * pkin(8) + t208;
t267 = sin(qJ(5));
t209 = t460 * t245 - t268 * t322;
t236 = -t264 * t268 + t265 * t460;
t309 = -pkin(8) * t236 + t209;
t459 = cos(qJ(5));
t23 = t459 * t139 - t267 * t309;
t266 = sin(qJ(6));
t501 = t23 * t266;
t59 = -t501 / 0.2e1;
t60 = t501 / 0.2e1;
t513 = t59 + t60;
t269 = cos(qJ(6));
t500 = t23 * t269;
t61 = -t500 / 0.2e1;
t62 = t500 / 0.2e1;
t512 = t61 + t62;
t259 = qJD(6) * t269;
t479 = t459 * t236 + t267 * t237;
t490 = t269 * t479;
t494 = t490 / 0.2e1;
t502 = 0.2e1 * t494;
t503 = t502 * qJD(1);
t511 = t259 + t503;
t423 = t479 ^ 2;
t344 = t459 * t237;
t413 = t267 * t236;
t288 = t344 - t413;
t493 = t288 ^ 2;
t351 = t493 - t423;
t507 = t351 * t269;
t510 = qJD(1) * t507;
t508 = t351 * t266;
t509 = t508 * qJD(1);
t495 = -t490 / 0.2e1;
t497 = t494 + t495;
t506 = qJD(6) * t497;
t505 = qJD(6) * t502;
t504 = t351 * qJD(1);
t416 = t267 * t139;
t480 = t459 * t309;
t70 = t480 + t416;
t499 = t266 * t70;
t498 = t269 * t70;
t197 = t344 / 0.2e1 - t413 / 0.2e1;
t486 = t288 * qJD(1);
t336 = t479 * t486;
t286 = qJD(6) * t197 + t336;
t496 = t352 * t23;
t455 = t288 * pkin(5);
t456 = t479 * pkin(9);
t110 = t455 + t456;
t492 = t288 / 0.2e1;
t491 = t479 / 0.2e1;
t312 = t480 / 0.2e1;
t457 = pkin(9) * t288;
t379 = qJD(5) * t479;
t293 = qJD(3) * t479 - t379;
t388 = qJD(2) * t288;
t489 = qJD(2) * t479;
t487 = t197 * qJD(1);
t485 = t479 * qJD(1);
t378 = qJD(5) * t288;
t484 = qJD(3) * t288 - t378;
t483 = 0.2e1 * t288;
t472 = pkin(3) + pkin(4);
t241 = qJ(4) * t267 + t459 * t472;
t239 = pkin(5) + t241;
t262 = t266 ^ 2;
t263 = t269 ^ 2;
t250 = t263 - t262;
t482 = t250 * t352;
t469 = -t479 / 0.2e1;
t310 = t459 * t469;
t345 = t459 * t479;
t463 = -t267 / 0.2e1;
t478 = -t288 * t463 + t310 - t345 / 0.2e1;
t242 = qJ(4) * t459 - t267 * t472;
t240 = -pkin(9) + t242;
t466 = -t239 / 0.2e1;
t325 = t241 / 0.2e1 + t466;
t273 = (-t240 / 0.2e1 + t242 / 0.2e1) * t288 + t325 * t479;
t477 = t457 / 0.2e1 + t273;
t475 = 0.2e1 * t239;
t417 = t266 * t269;
t339 = qJD(1) * t417;
t324 = t262 / 0.2e1 - t263 / 0.2e1;
t87 = t324 * t288;
t474 = -t339 * t493 + t352 * t87;
t232 = t237 ^ 2;
t230 = pkin(3) * t237;
t350 = -t230 / 0.2e1;
t465 = -t266 / 0.2e1;
t464 = t266 / 0.2e1;
t462 = t267 / 0.2e1;
t461 = t269 / 0.2e1;
t458 = pkin(3) * t236;
t270 = -t457 / 0.2e1 + pkin(5) * t491 + t273;
t8 = t269 * t270;
t453 = qJD(1) * t8;
t255 = -pkin(2) * t265 - pkin(1);
t439 = qJ(4) * t237;
t291 = -t255 + t439;
t115 = t236 * t472 + t291;
t307 = pkin(5) * t479 - t457;
t272 = t115 + t307;
t19 = -t269 * t272 + t499;
t282 = t288 * t70;
t421 = t236 * qJ(4);
t205 = t230 - t421;
t138 = -pkin(4) * t237 - t205;
t43 = t138 - t110;
t1 = t19 * t288 - t266 * t282 + t43 * t490;
t452 = t1 * qJD(1);
t20 = t266 * t272 + t498;
t419 = t266 * t479;
t2 = t20 * t288 - t269 * t282 - t419 * t43;
t451 = t2 * qJD(1);
t3 = (-t19 + t499) * t288 + t110 * t490;
t446 = t3 * qJD(1);
t5 = t266 * t270;
t445 = t5 * qJD(1);
t289 = t240 * t491 + t288 * t466;
t279 = t43 / 0.2e1 + t289;
t9 = t279 * t266 + t512;
t440 = t9 * qJD(1);
t418 = t266 * t288;
t13 = t19 * t479 + t23 * t418;
t438 = qJD(1) * t13;
t409 = t269 * t288;
t14 = -t20 * t479 - t23 * t409;
t437 = qJD(1) * t14;
t21 = t312 - t480 / 0.2e1;
t436 = qJD(1) * t21;
t27 = -t115 * t288 + t138 * t479;
t435 = qJD(1) * t27;
t28 = t115 * t479 + t138 * t288;
t434 = qJD(1) * t28;
t299 = -t423 - t493;
t38 = t299 * t269;
t431 = qJD(1) * t38;
t193 = -t291 - t458;
t63 = t193 * t237 - t205 * t236;
t429 = qJD(1) * t63;
t64 = -t193 * t236 - t205 * t237;
t428 = qJD(1) * t64;
t73 = t208 * t237 + t209 * t236;
t427 = qJD(1) * t73;
t79 = (t491 + t469) * t417;
t426 = qJD(1) * t79;
t11 = -t279 * t269 + t513;
t425 = t11 * qJD(1);
t25 = t193 * t205;
t420 = t25 * qJD(1);
t327 = -t288 / 0.2e1 + t492;
t271 = t310 + t345 / 0.2e1 + t327 * t267;
t29 = t271 * t266;
t408 = t29 * qJD(1);
t31 = t271 * t269;
t407 = t31 * qJD(1);
t36 = t299 * t266;
t405 = t36 * qJD(1);
t280 = t459 * t492 + t462 * t479;
t276 = t237 / 0.2e1 + t280;
t47 = t276 * t266;
t401 = t47 * qJD(1);
t50 = t276 * t269;
t400 = t50 * qJD(1);
t328 = t288 * t462;
t149 = t269 * t328;
t77 = t409 * t463 + t149;
t399 = t77 * qJD(1);
t398 = t87 * qJD(1);
t397 = t87 * qJD(6);
t187 = t288 * t464;
t88 = -0.2e1 * t187;
t396 = t88 * qJD(1);
t90 = 0.2e1 * t491 * t266;
t84 = t90 * qJD(1);
t173 = -t419 / 0.2e1;
t92 = 0.2e1 * t173;
t395 = t92 * qJD(1);
t95 = t327 * t266;
t394 = t95 * qJD(1);
t326 = 0.2e1 * t492;
t97 = t326 * t266;
t393 = t97 * qJD(1);
t98 = t327 * t269;
t392 = t98 * qJD(1);
t99 = t326 * t269;
t391 = t99 * qJD(1);
t249 = t264 ^ 2 + t265 ^ 2;
t387 = qJD(3) * qJ(4);
t384 = qJD(3) * t208;
t383 = qJD(3) * t266;
t382 = qJD(3) * t269;
t381 = qJD(4) * t237;
t380 = qJD(4) * t267;
t377 = qJD(5) * t266;
t376 = qJD(5) * t269;
t375 = qJD(6) * t266;
t103 = 0.2e1 * t495;
t373 = t103 * qJD(1);
t109 = t250 * t493;
t371 = t109 * qJD(1);
t136 = t421 + 0.2e1 * t350;
t368 = t136 * qJD(1);
t231 = t236 ^ 2;
t142 = t231 - t232;
t367 = t142 * qJD(1);
t207 = t231 + t232;
t361 = t207 * qJD(1);
t206 = t209 * qJD(3);
t360 = t232 * qJD(1);
t359 = t236 * qJD(1);
t223 = t236 * qJD(3);
t358 = t236 * qJD(4);
t357 = t237 * qJD(1);
t225 = t237 * qJD(3);
t243 = t249 * qJ(2);
t356 = t243 * qJD(1);
t355 = t249 * qJD(1);
t354 = t250 * qJD(6);
t353 = t267 * qJD(3);
t343 = t115 * t485;
t342 = t115 * t486;
t341 = t263 * t486;
t340 = t255 * t357;
t338 = t479 * t381;
t337 = qJD(6) * t479 * t288;
t335 = t288 * t485;
t334 = t479 * t357;
t333 = t288 * t357;
t332 = t236 * t357;
t252 = t266 * t259;
t331 = t269 * t486;
t330 = t419 / 0.2e1;
t329 = t479 * t465;
t323 = qJD(6) * t459;
t321 = t459 * qJD(3);
t320 = t459 * qJD(4);
t319 = t352 * t266;
t318 = t352 * t269;
t316 = t266 * t334;
t315 = t269 * t334;
t314 = t288 * t252;
t313 = t288 * t339;
t308 = -pkin(5) / 0.2e1 + t325;
t306 = -t99 * qJD(5) + t288 * t382;
t304 = -0.2e1 * t313;
t303 = 0.2e1 * t313;
t302 = t269 * t319;
t301 = t266 * t318;
t4 = (-t20 + t498) * t288 - t110 * t419;
t300 = t4 * qJD(1) + t77 * qJD(4);
t297 = t239 * t479 + t240 * t288;
t296 = t288 * (-qJD(6) - t485);
t295 = qJD(3) * t242 + t380;
t292 = qJD(5) * t242 + t380;
t290 = t456 / 0.2e1 + t455 / 0.2e1;
t285 = qJD(3) * t239 - t320;
t284 = t293 * t288;
t283 = t110 / 0.2e1 + t290;
t246 = -qJD(5) * t459 + t321;
t15 = t266 * t283 + t512;
t190 = t308 * t269;
t278 = pkin(5) * t376 - t15 * qJD(1) + t190 * qJD(3);
t17 = -t269 * t283 + t513;
t189 = t308 * t266;
t277 = pkin(5) * t377 - t17 * qJD(1) + t189 * qJD(3);
t251 = t266 * t353;
t275 = -t267 * t377 + t269 * t323 + t251;
t253 = t269 * t353;
t274 = -t266 * t323 - t267 * t376 + t253;
t244 = t352 * t267;
t227 = t237 * qJD(2);
t204 = t230 / 0.2e1 + t350;
t192 = t475 * t461;
t191 = t475 * t464;
t144 = -0.2e1 * t314;
t143 = 0.2e1 * t314;
t112 = t304 - t482;
t111 = t303 + t482;
t108 = t352 * t197;
t96 = t418 / 0.2e1 - t187;
t94 = -t418 / 0.2e1 - t187;
t93 = t173 + t330;
t91 = t330 + t329;
t86 = t98 * qJD(5);
t83 = t91 * qJD(6);
t82 = t90 * qJD(6);
t78 = t502 * t266;
t75 = t77 * qJD(5);
t72 = t375 + t84;
t66 = -t302 - t398;
t65 = t301 + t398;
t49 = t237 * t461 - t269 * t280;
t48 = t237 * t465 + t266 * t280;
t34 = t262 * t469 + t263 * t491 - t324 * t479;
t32 = t269 * t478 + t149;
t30 = (t328 + t478) * t266;
t24 = 0.2e1 * t312 + t416;
t18 = t110 * t461 - t269 * t290 + 0.2e1 * t59;
t16 = t110 * t465 + t266 * t290 + 0.2e1 * t61;
t12 = -t289 * t269 + t43 * t461 + 0.2e1 * t60;
t10 = t289 * t266 + t43 * t465 + 0.2e1 * t62;
t7 = pkin(5) * t495 + t477 * t269 - t499;
t6 = pkin(5) * t329 + t477 * t266 + t498;
t22 = [0, 0, 0, 0, 0, t249 * qJD(2), t243 * qJD(2), t236 * t225, t142 * qJD(3), 0, 0, 0, t255 * t225, t255 * t223, qJD(3) * t63 + t237 * t358, qJD(2) * t207, qJD(3) * t64 + qJD(4) * t232, qJD(2) * t73 + qJD(3) * t25 - t193 * t381, t284, t352 * t351, 0, 0, 0, qJD(3) * t27 + t115 * t378 + t338, qJD(3) * t28 - t115 * t379 + t288 * t381, -t252 * t493 + t263 * t284, -0.2e1 * t266 * t293 * t409 - t109 * qJD(6), -t266 * t337 - t352 * t507, -t269 * t337 + t352 * t508, -t484 * t479, t36 * qJD(2) + t1 * qJD(3) + t3 * qJD(5) + t14 * qJD(6) + t269 * t338, qJD(2) * t38 + qJD(3) * t2 + qJD(5) * t4 + qJD(6) * t13 - t266 * t338; 0, 0, 0, 0, 0, t355, t356, 0, 0, 0, 0, 0, 0, 0, 0, t361, 0, qJD(3) * t204 + t427, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t83 + t86 + t405, qJD(5) * t96 + t431 + t506; 0, 0, 0, 0, 0, 0, 0, t332, t367, t223, -t225, 0, -t206 + t340, t255 * t359 + t384, -t206 + t429 (-t439 - t458) * qJD(3) + t358, -t384 + t428, t420 + t204 * qJD(2) + (-pkin(3) * t209 - qJ(4) * t208) * qJD(3) + t209 * qJD(4), t335, t504, -t293, -t484, 0, -qJD(3) * t70 + qJD(5) * t24 + t435, t434 - t496, t78 * qJD(5) + t397 + (-t266 * t382 + t341) * t479, t34 * qJD(5) + t143 + (-qJD(3) * t250 + t304) * t479, qJD(5) * t94 + t288 * t383 + t506 - t510, t306 + t83 + t509, -t286, t452 + (t266 * t297 - t498) * qJD(3) + t30 * qJD(4) + t6 * qJD(5) + t12 * qJD(6), t451 + (t269 * t297 + t499) * qJD(3) + t32 * qJD(4) + t7 * qJD(5) + t10 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t332, t223, t360, -t193 * t357 + t206, 0, 0, 0, 0, 0, t334, t333, 0, 0, 0, 0, 0, t30 * qJD(3) + t49 * qJD(6) + t315, qJD(3) * t32 + qJD(6) * t48 - t316 + t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t336, -t504, t293, t484, 0, qJD(3) * t24 - qJD(5) * t70 + t342, -t343 + t496, t78 * qJD(3) - t397 + (-t266 * t376 - t341) * t479, t34 * qJD(3) + t144 + (-qJD(5) * t250 + t303) * t479, qJD(3) * t94 + t288 * t377 + t506 + t510, -t99 * qJD(3) + t93 * qJD(6) + t288 * t376 - t509, t286, t446 + t98 * qJD(2) + t6 * qJD(3) + (t266 * t307 - t498) * qJD(5) + t18 * qJD(6), t96 * qJD(2) + t7 * qJD(3) + (t269 * t307 + t499) * qJD(5) + t16 * qJD(6) + t300; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t474, t301 * t483 - t371, t266 * t296 + (qJD(3) + qJD(5)) * t497, t91 * qJD(3) + t93 * qJD(5) + t269 * t296, -t108, qJD(2) * t91 + qJD(3) * t12 + qJD(4) * t49 + qJD(5) * t18 - qJD(6) * t20 + t437, qJD(2) * t497 + qJD(3) * t10 + qJD(4) * t48 + qJD(5) * t16 + qJD(6) * t19 + t438; 0, 0, 0, 0, 0, -t355, -t356, 0, 0, 0, 0, 0, t225, t223, t225, -t361, -t223, -qJD(3) * t136 - t381 - t427, 0, 0, 0, 0, 0, t484, -t293, 0, 0, 0, 0, 0, t306 + t82 - t405, qJD(3) * t88 + qJD(5) * t97 - t431 + t505; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t357, t359, t357, 0, -t359, -t368, 0, 0, 0, 0, 0, t486, -t485, 0, 0, 0, 0, 0, t331, t396; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t357, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t486, t485, 0, 0, 0, 0, 0, -t391, t393; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t72, t511; 0, 0, 0, 0, 0, 0, 0, -t332, -t367, 0, 0, 0, -t227 - t340 (-qJD(1) * t255 - qJD(2)) * t236, -t227 - t429, 0, qJD(2) * t236 - t428, qJD(2) * t136 - t420, -t335, -t504, 0, 0, 0, -qJD(5) * t21 - t388 - t435, -t434 + t489, qJD(5) * t79 - t263 * t335 + t397, t303 * t479 + t143, qJD(5) * t95 + qJD(6) * t103 + t510, t82 + t86 - t509, t286, -t29 * qJD(4) + t5 * qJD(5) + t11 * qJD(6) - t269 * t388 - t452, -qJD(2) * t88 - qJD(4) * t31 + qJD(5) * t8 + qJD(6) * t9 - t451; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t357, -t359, -t357, 0, t359, t368, 0, 0, 0, 0, 0, -t486, t485, 0, 0, 0, 0, 0, -t331, -t396; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4), qJ(4) * qJD(4), 0, 0, 0, 0, 0, t292, -t241 * qJD(5) + t320, t252, t354, 0, 0, 0, -t239 * t375 + t269 * t292, -t239 * t259 - t266 * t292; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3), t387, 0, 0, 0, 0, 0, t353, t321, 0, 0, 0, 0, 0, t253 - t408, -t251 - t407; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t242 * t352 - t436, -t241 * t352, -t252 + t426, -t354, t394, t392, 0, t191 * qJD(6) + t242 * t318 + t445, qJD(6) * t192 - t242 * t319 + t453; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t65, t111, -t259 + t373, t72, t487, t191 * qJD(5) - t239 * t383 - t240 * t259 + t425, t192 * qJD(5) - t239 * t382 + t240 * t375 + t440; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t332, 0, -t360 (qJD(1) * t193 + qJD(2)) * t237, 0, 0, 0, 0, 0, -t334, -t333, 0, 0, 0, 0, 0, t29 * qJD(3) - t50 * qJD(6) - t315, qJD(3) * t31 + qJD(6) * t47 + t316 + t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t357, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3), -t387, 0, 0, 0, 0, 0, -t244, -t246, 0, 0, 0, 0, 0, -t274 + t408, t275 + t407; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t244, t246, 0, 0, 0, 0, 0, t274, -t275 + t399; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t246 * t266 - t259 * t267 - t400, t246 * t269 + t267 * t375 + t401; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t336, t504, 0, 0, 0, qJD(3) * t21 - t342 + t388, t343 - t489, -qJD(3) * t79 + t263 * t336 - t397, t304 * t479 + t144, -qJD(3) * t95 + t505 - t510, -qJD(3) * t98 + qJD(6) * t92 + t509, -t286, qJD(2) * t99 - qJD(3) * t5 + qJD(6) * t17 - t446, -qJD(2) * t97 - qJD(3) * t8 + qJD(6) * t15 - t300; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t486, -t485, 0, 0, 0, 0, 0, t391, -t393; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t295 + t436, t241 * qJD(3) - t320, -t252 - t426, -t354, -t394, -t392, 0, -t189 * qJD(6) - t269 * t295 - t445, -qJD(6) * t190 + t266 * t295 - t453; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t353, -t321, 0, 0, 0, 0, 0, -t253, t251 - t399; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t252, t354, 0, 0, 0, -pkin(5) * t375, -pkin(5) * t259; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t66, t112, t511, -t375 + t395, -t487, -pkin(9) * t259 - t277, pkin(9) * t375 - t278; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t474, -t302 * t483 + t371, -qJD(3) * t103 - qJD(5) * t502 + t266 * t336, -t90 * qJD(3) - t92 * qJD(5) + t269 * t336, -t108, -qJD(2) * t90 - qJD(3) * t11 + qJD(4) * t50 - qJD(5) * t17 - t437, -qJD(2) * t502 - qJD(3) * t9 - qJD(4) * t47 - qJD(5) * t15 - t438; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t84, -t503; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t66, t112, -t373, -t84, -t487, t189 * qJD(5) + t266 * t285 - t425, t190 * qJD(5) + t269 * t285 - t440; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t266 * t321 + t400, -t269 * t321 - t401; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t65, t111, -t503, -t395, t487, t277, t278; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t22;
