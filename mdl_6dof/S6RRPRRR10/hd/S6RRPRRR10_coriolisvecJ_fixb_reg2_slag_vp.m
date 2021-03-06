% Calculate inertial parameters regressor of coriolis joint torque vector for
% S6RRPRRR10
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,d6,theta3]';
% 
% Output:
% tauc_reg [6x(6*10)]
%   inertial parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 14:28
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RRPRRR10_coriolisvecJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR10_coriolisvecJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRR10_coriolisvecJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRPRRR10_coriolisvecJ_fixb_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 14:25:24
% EndTime: 2019-03-09 14:26:02
% DurationCPUTime: 17.37s
% Computational Cost: add. (34374->718), mult. (88900->1010), div. (0->0), fcn. (73154->12), ass. (0->313)
t339 = sin(pkin(12));
t341 = cos(pkin(12));
t345 = sin(qJ(4));
t479 = cos(qJ(4));
t371 = -t345 * t339 + t341 * t479;
t340 = sin(pkin(6));
t348 = cos(qJ(2));
t422 = qJD(1) * t348;
t403 = t340 * t422;
t250 = t371 * t403;
t399 = qJD(4) * t479;
t420 = qJD(4) * t345;
t287 = t339 * t420 - t341 * t399;
t429 = t250 + t287;
t296 = t339 * t479 + t345 * t341;
t443 = t340 * t348;
t357 = t296 * t443;
t427 = -qJD(1) * t357 + t296 * qJD(4);
t346 = sin(qJ(2));
t378 = pkin(2) * t346 - qJ(3) * t348;
t424 = qJD(1) * t340;
t280 = t378 * t424;
t404 = t346 * t424;
t342 = cos(pkin(6));
t476 = pkin(1) * t348;
t413 = t342 * t476;
t281 = -pkin(8) * t404 + qJD(1) * t413;
t214 = t341 * t280 - t281 * t339;
t442 = t341 * t348;
t363 = (pkin(3) * t346 - pkin(9) * t442) * t340;
t183 = qJD(1) * t363 + t214;
t215 = t339 * t280 + t341 * t281;
t385 = t339 * t403;
t195 = -pkin(9) * t385 + t215;
t475 = pkin(9) + qJ(3);
t313 = t475 * t339;
t314 = t475 * t341;
t486 = -t479 * t313 - t345 * t314;
t436 = -t371 * qJD(3) - qJD(4) * t486 + t345 * t183 + t479 * t195;
t521 = pkin(10) * t404 + t436;
t477 = pkin(1) * t346;
t426 = pkin(8) * t443 + t342 * t477;
t282 = t426 * qJD(1);
t242 = pkin(3) * t385 + t282;
t520 = -t427 * pkin(4) - pkin(10) * t429 + t242;
t344 = sin(qJ(5));
t347 = cos(qJ(5));
t216 = t250 * t344 - t347 * t404;
t519 = t287 * t344 + t216;
t423 = qJD(1) * t342;
t326 = qJD(2) + t423;
t264 = t326 * t341 - t339 * t404;
t265 = t326 * t339 + t341 * t404;
t203 = -t479 * t264 + t265 * t345;
t343 = sin(qJ(6));
t441 = t343 * t344;
t478 = cos(qJ(6));
t369 = t478 * t347 - t441;
t483 = qJD(5) + qJD(6);
t397 = t478 * qJD(6);
t502 = t347 * (t478 * qJD(5) + t397);
t514 = -t369 * t203 + t441 * t483 - t502;
t406 = t478 * t344;
t300 = t343 * t347 + t406;
t237 = t483 * t300;
t434 = t300 * t203 + t237;
t318 = -qJD(4) + t403;
t372 = t345 * t264 + t265 * t479;
t175 = t318 * t347 + t344 * t372;
t177 = -t318 * t344 + t347 * t372;
t401 = qJD(2) * t443;
t383 = t341 * t401;
t373 = t479 * t383;
t414 = qJD(1) * qJD(2);
t395 = t348 * t414;
t382 = t340 * t395;
t375 = t339 * t382;
t151 = t345 * (qJD(4) * t265 + t375) - qJD(1) * t373 - t264 * t399;
t421 = qJD(2) * t346;
t402 = t340 * t421;
t381 = qJD(1) * t402;
t418 = qJD(5) * t347;
t419 = qJD(5) * t344;
t356 = t344 * t151 + t318 * t419 + t347 * t381 - t372 * t418;
t417 = qJD(6) * t343;
t85 = t347 * t151 + t318 * t418 - t344 * t381 + t372 * t419;
t28 = t175 * t397 + t177 * t417 - t343 * t356 + t478 * t85;
t370 = -t343 * t175 + t177 * t478;
t518 = -t28 * t369 - t370 * t434;
t362 = t296 * t418 - t519;
t217 = t250 * t347 + t344 * t404;
t450 = t287 * t347;
t392 = t217 + t450;
t361 = -t296 * t419 - t392;
t355 = qJD(2) * t357;
t484 = qJD(4) * t372;
t152 = qJD(1) * t355 + t484;
t500 = qJD(5) + t203;
t197 = qJD(6) + t500;
t517 = t152 * t300 - t197 * t514;
t333 = -pkin(3) * t341 - pkin(2);
t229 = -pkin(4) * t371 - pkin(10) * t296 + t333;
t248 = -t345 * t313 + t314 * t479;
t471 = -t229 * t418 + t248 * t419 + t520 * t344 + t347 * t521;
t516 = t344 * t521 - t520 * t347;
t454 = t500 * t344;
t515 = t177 * t454;
t251 = qJ(3) * t326 + t282;
t277 = (-pkin(2) * t348 - qJ(3) * t346 - pkin(1)) * t340;
t259 = qJD(1) * t277;
t184 = -t251 * t339 + t341 * t259;
t134 = -pkin(3) * t403 - pkin(9) * t265 + t184;
t185 = t341 * t251 + t339 * t259;
t153 = pkin(9) * t264 + t185;
t75 = t345 * t134 + t153 * t479;
t72 = -t318 * pkin(10) + t75;
t244 = -pkin(2) * t326 + qJD(3) - t281;
t201 = -pkin(3) * t264 + t244;
t90 = pkin(4) * t203 - pkin(10) * t372 + t201;
t44 = -t344 * t72 + t347 * t90;
t254 = (qJD(2) * t378 - qJD(3) * t346) * t340;
t238 = qJD(1) * t254;
t412 = pkin(1) * qJD(2) * t342;
t386 = qJD(1) * t412;
t272 = -pkin(8) * t381 + t348 * t386;
t239 = qJD(3) * t326 + t272;
t179 = t341 * t238 - t239 * t339;
t359 = qJD(2) * t363;
t135 = qJD(1) * t359 + t179;
t180 = t339 * t238 + t341 * t239;
t154 = -pkin(9) * t375 + t180;
t42 = t134 * t399 + t345 * t135 - t153 * t420 + t479 * t154;
t40 = pkin(10) * t381 + t42;
t273 = pkin(8) * t382 + t346 * t386;
t232 = pkin(3) * t375 + t273;
t67 = pkin(4) * t152 + pkin(10) * t151 + t232;
t9 = t344 * t67 + t347 * t40 + t90 * t418 - t419 * t72;
t493 = -t44 * t500 + t9;
t45 = t344 * t90 + t347 * t72;
t10 = -t45 * qJD(5) - t344 * t40 + t347 * t67;
t513 = t45 * t500 + t10;
t29 = qJD(6) * t370 - t343 * t85 - t478 * t356;
t97 = t478 * t175 + t177 * t343;
t512 = -t300 * t29 + t514 * t97;
t511 = t152 * t369 - t197 * t434;
t510 = t203 ^ 2;
t234 = t347 * t248;
t509 = pkin(11) * t217 + pkin(11) * t450 + (-t234 + (pkin(11) * t296 - t229) * t344) * qJD(5) + t516 + t427 * pkin(5);
t508 = pkin(11) * t362 + t471;
t469 = t97 * t370;
t480 = -pkin(11) - pkin(10);
t407 = qJD(5) * t480;
t453 = t203 * t344;
t126 = pkin(4) * t372 + pkin(10) * t203;
t74 = t134 * t479 - t345 * t153;
t55 = t344 * t126 + t347 * t74;
t507 = -pkin(11) * t453 + t344 * t407 - t55;
t54 = t347 * t126 - t344 * t74;
t506 = -pkin(5) * t372 - t54 + (-pkin(11) * t203 + t407) * t347;
t505 = t175 * t203;
t504 = t203 * t318;
t437 = qJD(3) * t296 + qJD(4) * t248 + t183 * t479 - t345 * t195;
t499 = t370 ^ 2 - t97 ^ 2;
t498 = t197 * t97 - t28;
t33 = -pkin(11) * t177 + t44;
t30 = pkin(5) * t500 + t33;
t34 = -pkin(11) * t175 + t45;
t6 = pkin(5) * t152 + pkin(11) * t85 + t10;
t7 = pkin(11) * t356 + t9;
t352 = -t30 * t397 + t34 * t417 - t343 * t6 - t478 * t7;
t71 = t318 * pkin(4) - t74;
t59 = t175 * pkin(5) + t71;
t497 = t59 * t97 + t352;
t495 = t372 ^ 2;
t336 = t340 ^ 2;
t494 = -0.2e1 * t336 * t414;
t492 = t372 * t97;
t444 = t340 * t346;
t285 = t339 * t444 - t342 * t341;
t286 = t339 * t342 + t341 * t444;
t218 = t285 * t479 + t286 * t345;
t219 = -t345 * t285 + t286 * t479;
t327 = pkin(8) * t444;
t279 = t327 + (-pkin(2) - t476) * t342;
t227 = pkin(3) * t285 + t279;
t117 = pkin(4) * t218 - pkin(10) * t219 + t227;
t276 = qJ(3) * t342 + t426;
t208 = -t276 * t339 + t341 * t277;
t162 = -pkin(3) * t443 - pkin(9) * t286 + t208;
t209 = t341 * t276 + t339 * t277;
t182 = -pkin(9) * t285 + t209;
t95 = t345 * t162 + t479 * t182;
t93 = -pkin(10) * t443 + t95;
t57 = t344 * t117 + t347 * t93;
t490 = t175 * t372;
t489 = t177 * t372;
t488 = t318 * t372;
t487 = t370 * t372;
t430 = pkin(4) * t404 + t437;
t169 = t344 * t229 + t234;
t411 = t478 * t34;
t12 = t343 * t30 + t411;
t2 = -qJD(6) * t12 - t343 * t7 + t478 * t6;
t482 = -t59 * t370 + t2;
t481 = t197 * t370 - t29;
t168 = t347 * t229 - t248 * t344;
t448 = t296 * t347;
t127 = -pkin(5) * t371 - pkin(11) * t448 + t168;
t449 = t296 * t344;
t140 = -pkin(11) * t449 + t169;
t69 = t127 * t478 - t343 * t140;
t474 = qJD(6) * t69 + t343 * t509 - t478 * t508;
t70 = t343 * t127 + t140 * t478;
t473 = -qJD(6) * t70 + t343 * t508 + t478 * t509;
t470 = -qJD(5) * t169 + t516;
t465 = t343 * t34;
t464 = t85 * t344;
t463 = pkin(5) * t362 + t430;
t319 = t480 * t344;
t320 = t480 * t347;
t256 = t343 * t319 - t320 * t478;
t462 = qJD(6) * t256 + t343 * t507 - t478 * t506;
t255 = t319 * t478 + t343 * t320;
t461 = qJD(6) * t255 + t343 * t506 + t478 * t507;
t81 = t344 * t356;
t460 = -t175 * t418 + t81;
t116 = t152 * t218;
t128 = t152 * t371;
t458 = t152 * t344;
t457 = t177 * t175;
t456 = t184 * t346;
t455 = t185 * t346;
t452 = t372 * t203;
t338 = t348 ^ 2;
t447 = t336 * t338;
t446 = t336 * qJD(1) ^ 2;
t445 = t339 * t348;
t144 = t347 * t152;
t439 = -t343 * t216 + t478 * t217 + t237 * t296 + t287 * t369;
t438 = -t478 * t216 - t287 * t406 + t296 * t502 + t343 * t361 - t417 * t449;
t283 = -pkin(8) * t402 + t348 * t412;
t263 = qJD(3) * t342 + t283;
t192 = t339 * t254 + t341 * t263;
t425 = t346 ^ 2 - t338;
t416 = qJD(2) - t326;
t410 = t338 * t446;
t409 = t348 * t446;
t408 = t344 * t443;
t56 = t347 * t117 - t344 * t93;
t191 = t341 * t254 - t263 * t339;
t391 = t500 ^ 2;
t389 = t500 * t347;
t388 = t326 + t423;
t387 = qJD(2) * t341 - t264;
t43 = -t134 * t420 + t479 * t135 - t153 * t399 - t345 * t154;
t384 = t339 * t401;
t380 = -t75 + (t419 + t453) * pkin(5);
t379 = pkin(1) * t494;
t94 = t162 * t479 - t345 * t182;
t377 = t344 * t45 + t347 * t44;
t376 = -t264 * t341 + t265 * t339;
t374 = t336 * t346 * t395;
t92 = pkin(4) * t443 - t94;
t199 = t219 * t347 - t408;
t38 = pkin(5) * t218 - pkin(11) * t199 + t56;
t198 = t219 * t344 + t347 * t443;
t47 = -pkin(11) * t198 + t57;
t20 = -t343 * t47 + t38 * t478;
t21 = t343 * t38 + t47 * t478;
t123 = -t343 * t198 + t199 * t478;
t158 = t191 + t359;
t178 = -pkin(9) * t384 + t192;
t52 = t345 * t158 + t162 * t399 + t479 * t178 - t182 * t420;
t49 = pkin(10) * t402 + t52;
t171 = t285 * t399 - t373 + (qJD(4) * t286 + t384) * t345;
t172 = qJD(4) * t219 + t355;
t284 = t426 * qJD(2);
t243 = pkin(3) * t384 + t284;
t84 = pkin(4) * t172 + pkin(10) * t171 + t243;
t16 = t117 * t418 + t344 * t84 + t347 * t49 - t419 * t93;
t367 = t387 * t424;
t366 = (qJD(2) * t339 - t265) * t424;
t365 = -pkin(10) * t152 + t500 * t71;
t53 = t158 * t479 - t162 * t420 - t345 * t178 - t182 * t399;
t360 = t348 * t366;
t41 = -pkin(4) * t381 - t43;
t354 = t356 * t347;
t353 = -qJ(3) * t421 + (-pkin(2) * qJD(2) + qJD(3) - t244) * t348;
t17 = -qJD(5) * t57 - t344 * t49 + t347 * t84;
t50 = -pkin(4) * t402 - t53;
t335 = -pkin(5) * t347 - pkin(4);
t308 = t346 * t409;
t301 = -0.2e1 * t374;
t289 = -t327 + t413;
t224 = t369 * t296;
t223 = t300 * t296;
t212 = pkin(5) * t449 - t486;
t122 = t198 * t478 + t199 * t343;
t105 = -qJD(5) * t408 - t171 * t344 + t219 * t418 - t347 * t402;
t104 = qJD(5) * t198 + t347 * t171 - t344 * t402;
t64 = t198 * pkin(5) + t92;
t37 = qJD(6) * t123 - t343 * t104 + t105 * t478;
t36 = t104 * t478 + t343 * t105 + t198 * t397 + t199 * t417;
t31 = t105 * pkin(5) + t50;
t26 = -pkin(5) * t356 + t41;
t15 = t33 * t478 - t465;
t14 = -t343 * t33 - t411;
t13 = -pkin(11) * t105 + t16;
t11 = t30 * t478 - t465;
t8 = pkin(5) * t172 + pkin(11) * t104 + t17;
t4 = -qJD(6) * t21 - t343 * t13 + t478 * t8;
t3 = qJD(6) * t20 + t13 * t478 + t343 * t8;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t374, t425 * t494, t388 * t401, t301, -t388 * t402, 0, -t273 * t342 - t284 * t326 + t346 * t379, -t272 * t342 - t283 * t326 + t348 * t379 (t272 * t348 + t273 * t346 + (-t281 * t348 - t282 * t346) * qJD(2) + (t283 * t348 + t284 * t346 + (-t289 * t348 - t346 * t426) * qJD(2)) * qJD(1)) * t340, t272 * t426 - t273 * t289 - t281 * t284 + t282 * t283 (qJD(1) * t286 + t265) * t383 ((-t285 * t341 - t286 * t339) * qJD(1) - t376) * t401 (t265 * t444 + (t286 * t444 - 0.2e1 * t341 * t447) * qJD(1)) * qJD(2) (qJD(1) * t285 - t264) * t384 (t264 * t444 + (-t285 * t444 + 0.2e1 * t339 * t447) * qJD(1)) * qJD(2), t301, -t264 * t284 + t273 * t285 + ((-qJD(1) * t191 - t179) * t348 + (t244 * t445 + t456 + (t208 * t346 + t279 * t445) * qJD(1)) * qJD(2)) * t340, t265 * t284 + t273 * t286 + ((qJD(1) * t192 + t180) * t348 + (t244 * t442 - t455 + (-t209 * t346 + t279 * t442) * qJD(1)) * qJD(2)) * t340, -t179 * t286 - t180 * t285 - t191 * t265 + t192 * t264 + (-t184 * t341 - t185 * t339 + (-t208 * t341 - t209 * t339) * qJD(1)) * t401, t179 * t208 + t180 * t209 + t184 * t191 + t185 * t192 + t244 * t284 + t273 * t279, -t151 * t219 - t171 * t372, t151 * t218 - t152 * t219 + t171 * t203 - t172 * t372, t171 * t318 + (t151 * t348 + (qJD(1) * t219 + t372) * t421) * t340, t172 * t203 + t116, t172 * t318 + (t152 * t348 + (-qJD(1) * t218 - t203) * t421) * t340 (-t318 * t340 - t336 * t422) * t421, t152 * t227 + t172 * t201 + t203 * t243 + t218 * t232 - t318 * t53 + (-t348 * t43 + (qJD(1) * t94 + t74) * t421) * t340, -t151 * t227 - t171 * t201 + t372 * t243 + t219 * t232 + t318 * t52 + (t348 * t42 + (-qJD(1) * t95 - t75) * t421) * t340, t151 * t94 - t152 * t95 + t171 * t74 - t172 * t75 - t203 * t52 - t218 * t42 - t219 * t43 - t372 * t53, t201 * t243 + t227 * t232 + t42 * t95 + t43 * t94 + t52 * t75 + t53 * t74, -t104 * t177 - t199 * t85, t104 * t175 - t177 * t105 + t85 * t198 + t199 * t356, -t104 * t500 + t152 * t199 + t172 * t177 - t218 * t85, t175 * t105 - t198 * t356, -t105 * t500 - t198 * t152 - t175 * t172 + t218 * t356, t172 * t500 + t116, t10 * t218 + t71 * t105 + t56 * t152 + t17 * t500 + t44 * t172 + t50 * t175 + t41 * t198 - t356 * t92, -t104 * t71 - t152 * t57 - t16 * t500 - t172 * t45 + t177 * t50 + t199 * t41 - t218 * t9 - t85 * t92, -t10 * t199 + t44 * t104 - t45 * t105 - t16 * t175 - t17 * t177 - t9 * t198 + t356 * t57 + t56 * t85, t10 * t56 + t16 * t45 + t17 * t44 + t41 * t92 + t50 * t71 + t57 * t9, -t123 * t28 - t36 * t370, t122 * t28 - t123 * t29 + t36 * t97 - t37 * t370, t123 * t152 + t172 * t370 - t197 * t36 - t218 * t28, t122 * t29 + t37 * t97, -t122 * t152 - t172 * t97 - t197 * t37 - t218 * t29, t172 * t197 + t116, t11 * t172 + t122 * t26 + t152 * t20 + t197 * t4 + t2 * t218 + t29 * t64 + t31 * t97 + t37 * t59, -t12 * t172 + t123 * t26 - t152 * t21 - t197 * t3 + t218 * t352 - t28 * t64 + t31 * t370 - t36 * t59, t11 * t36 - t12 * t37 + t122 * t352 - t123 * t2 + t20 * t28 - t21 * t29 - t3 * t97 - t370 * t4, t11 * t4 + t12 * t3 + t2 * t20 - t21 * t352 + t26 * t64 + t31 * t59; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t308, t425 * t446, t416 * t403, t308, -t416 * t404, 0, t282 * t326 + t446 * t477 - t273, pkin(1) * t409 + t281 * t326 - t272, 0, 0, t341 * t360 ((-t339 ^ 2 + t341 ^ 2) * qJD(2) + t376) * t403, t341 * t410 + t346 * t366, -t387 * t385, -t339 * t410 + t346 * t367, t308, t264 * t282 - t273 * t341 + (t214 * t348 + t339 * t353 - t456) * t424, -t265 * t282 + t273 * t339 + (-t215 * t348 + t341 * t353 + t455) * t424, t214 * t265 - t215 * t264 + (qJD(3) * t264 + t184 * t403 + t180) * t341 + (qJD(3) * t265 + t185 * t403 - t179) * t339, -pkin(2) * t273 - t184 * t214 - t185 * t215 - t244 * t282 + (-t184 * t339 + t185 * t341) * qJD(3) + (-t179 * t339 + t180 * t341) * qJ(3), -t151 * t296 - t372 * t429, -t151 * t371 - t152 * t296 + t203 * t429 - t372 * t427, t429 * t318 + (qJD(2) * t296 - t372) * t404, t203 * t427 - t128, t427 * t318 + (qJD(2) * t371 + t203) * t404, t318 * t404, t152 * t333 - t203 * t242 - t232 * t371 + t437 * t318 + t427 * t201 + (qJD(2) * t486 - t74) * t404, -t151 * t333 - t372 * t242 + t232 * t296 - t436 * t318 - t429 * t201 + (-qJD(2) * t248 + t75) * t404, t151 * t486 - t152 * t248 + t203 * t436 - t296 * t43 + t371 * t42 + t372 * t437 - t427 * t75 + t429 * t74, -t201 * t242 + t232 * t333 + t248 * t42 + t43 * t486 - t436 * t75 - t437 * t74, t177 * t361 - t448 * t85, t519 * t177 + t392 * t175 + (t354 + t464 + (t175 * t344 - t177 * t347) * qJD(5)) * t296, t144 * t296 + t177 * t427 + t361 * t500 + t371 * t85, t175 * t362 - t296 * t81, -t152 * t449 - t175 * t427 - t356 * t371 - t362 * t500, t427 * t500 - t128, -t10 * t371 + t168 * t152 + t175 * t430 + t356 * t486 + t362 * t71 + t41 * t449 + t427 * t44 + t470 * t500, -t152 * t169 + t177 * t430 + t361 * t71 + t371 * t9 + t41 * t448 - t427 * t45 + t471 * t500 + t486 * t85, t169 * t356 + t168 * t85 + t45 * t216 + t44 * t217 + t377 * t287 - t470 * t177 + t471 * t175 + (-t10 * t347 - t9 * t344 + (t344 * t44 - t347 * t45) * qJD(5)) * t296, t10 * t168 + t169 * t9 - t41 * t486 + t430 * t71 + t44 * t470 - t45 * t471, -t224 * t28 - t370 * t439, t223 * t28 - t224 * t29 - t370 * t438 + t439 * t97, t152 * t224 - t197 * t439 + t28 * t371 + t370 * t427, t223 * t29 + t438 * t97, -t152 * t223 - t197 * t438 + t29 * t371 - t427 * t97, t197 * t427 - t128, t11 * t427 + t152 * t69 + t197 * t473 - t2 * t371 + t212 * t29 + t223 * t26 + t438 * t59 + t463 * t97, -t12 * t427 - t152 * t70 - t197 * t474 - t212 * t28 + t224 * t26 - t352 * t371 + t370 * t463 - t439 * t59, t11 * t439 - t12 * t438 - t2 * t224 + t223 * t352 + t28 * t69 - t29 * t70 - t370 * t473 - t474 * t97, t11 * t473 + t12 * t474 + t2 * t69 + t212 * t26 - t352 * t70 + t463 * t59; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t360, t348 * t367, -t264 ^ 2 - t265 ^ 2, t184 * t265 - t185 * t264 + t273, 0, 0, 0, 0, 0, 0, t152 - t488, -t151 + t504, -t495 - t510, t203 * t75 + t372 * t74 + t232, 0, 0, 0, 0, 0, 0, -t344 * t391 + t144 - t490, -t347 * t391 - t458 - t489 (t85 - t505) * t347 + t515 + t460, t344 * t493 + t347 * t513 - t372 * t71, 0, 0, 0, 0, 0, 0, -t492 + t511, -t487 - t517, t512 - t518, -t11 * t434 - t12 * t514 + t2 * t369 - t300 * t352 - t372 * t59; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t452, t495 - t510, -t151 - t504, -t452, -t296 * t382 - t484 - t488, t381, -t201 * t372 - t318 * t75 + t43, t201 * t203 - t318 * t74 - t42, 0, 0, t177 * t389 - t464 (-t85 - t505) * t347 - t515 + t460, t389 * t500 + t458 - t489, t175 * t454 + t354, -t454 * t500 + t144 + t490, -t500 * t372, pkin(4) * t356 - t41 * t347 - t44 * t372 - t75 * t175 + (-pkin(10) * t418 - t54) * t500 + t365 * t344, pkin(4) * t85 - t177 * t75 + t372 * t45 + t41 * t344 + (pkin(10) * t419 + t55) * t500 + t365 * t347, t55 * t175 + t54 * t177 + ((qJD(5) * t177 + t356) * pkin(10) + t493) * t347 + ((qJD(5) * t175 - t85) * pkin(10) - t513) * t344, -pkin(4) * t41 - t44 * t54 - t45 * t55 - t71 * t75 + (-qJD(5) * t377 - t10 * t344 + t9 * t347) * pkin(10), -t28 * t300 - t370 * t514, t512 + t518, -t487 + t517, -t29 * t369 + t434 * t97, t492 + t511, -t197 * t372, -t11 * t372 + t152 * t255 - t197 * t462 - t26 * t369 + t29 * t335 + t380 * t97 + t434 * t59, t12 * t372 - t152 * t256 - t197 * t461 + t26 * t300 - t28 * t335 + t370 * t380 - t514 * t59, t11 * t514 - t12 * t434 - t2 * t300 + t255 * t28 - t256 * t29 - t352 * t369 + t370 * t462 - t461 * t97, -t11 * t462 + t12 * t461 + t2 * t255 - t256 * t352 + t26 * t335 + t380 * t59; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t457, -t175 ^ 2 + t177 ^ 2, t175 * t500 - t85, -t457, t177 * t500 + t356, t152, -t177 * t71 + t513, t175 * t71 - t493, 0, 0, t469, t499, t498, -t469, t481, t152, -t14 * t197 + (t152 * t478 - t177 * t97 - t197 * t417) * pkin(5) + t482, t15 * t197 + (-t152 * t343 - t177 * t370 - t197 * t397) * pkin(5) + t497, t14 * t370 - t11 * t97 + t12 * t370 + t15 * t97 + (t478 * t28 - t29 * t343 + (t343 * t370 - t478 * t97) * qJD(6)) * pkin(5), -t11 * t14 - t12 * t15 + (t478 * t2 - t352 * t343 - t177 * t59 + (-t11 * t343 + t12 * t478) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t469, t499, t498, -t469, t481, t152, t12 * t197 + t482, t11 * t197 + t497, 0, 0;];
tauc_reg  = t1;
