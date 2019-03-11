% Calculate minimal parameter regressor of inverse dynamics joint torque vector for
% S6RRRPRR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% qJDD [6x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d2,d3,d5,d6,theta4]';
% 
% Output:
% tau_reg [6x33]
%   minimal parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 19:14
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRRPRR9_invdynJ_fixb_regmin_slag_vp(qJ, qJD, qJDD, g, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR9_invdynJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRR9_invdynJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPRR9_invdynJ_fixb_regmin_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPRR9_invdynJ_fixb_regmin_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RRRPRR9_invdynJ_fixb_regmin_slag_vp: pkin has to be [13x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 19:10:22
% EndTime: 2019-03-09 19:11:11
% DurationCPUTime: 21.77s
% Computational Cost: add. (29954->813), mult. (89562->1171), div. (0->0), fcn. (77094->16), ass. (0->387)
t377 = cos(qJ(2));
t368 = cos(pkin(6));
t571 = pkin(1) * t368;
t353 = t377 * t571;
t344 = qJD(1) * t353;
t372 = sin(qJ(2));
t365 = sin(pkin(6));
t367 = cos(pkin(7));
t479 = pkin(10) * t367 + pkin(9);
t445 = t365 * t479;
t424 = t372 * t445;
t269 = -qJD(1) * t424 + t344;
t570 = pkin(1) * t372;
t352 = t368 * t570;
t386 = -t377 * t445 - t352;
t270 = t386 * qJD(1);
t364 = sin(pkin(7));
t567 = pkin(10) * t364;
t423 = pkin(2) * t372 - t377 * t567;
t506 = qJD(1) * t365;
t301 = t423 * t506;
t376 = cos(qJ(3));
t496 = t376 * qJD(3);
t473 = t367 * t496;
t371 = sin(qJ(3));
t527 = t367 * t371;
t535 = t364 * t371;
t597 = pkin(2) * t473 - t376 * t269 - t270 * t527 - t301 * t535;
t517 = t376 * t377;
t525 = t371 * t372;
t413 = -t367 * t525 + t517;
t295 = t413 * t506;
t350 = pkin(2) * t527;
t526 = t367 * t376;
t533 = t364 * t376;
t438 = -t371 * t269 + t270 * t526 + t301 * t533;
t504 = qJD(1) * t372;
t477 = t365 * t504;
t452 = t364 * t477;
t562 = pkin(10) + qJ(4);
t471 = t562 * t364;
t596 = pkin(3) * t452 - qJ(4) * t295 + qJD(4) * t535 - (-t376 * t471 - t350) * qJD(3) + t438;
t522 = t372 * t376;
t524 = t371 * t377;
t415 = t367 * t522 + t524;
t294 = t415 * t506;
t502 = qJD(3) * t371;
t595 = qJ(4) * t294 + (qJD(4) * t376 - t502 * t562) * t364 + t597;
t363 = sin(pkin(13));
t366 = cos(pkin(13));
t518 = t376 * t366;
t323 = t363 * t371 - t518;
t594 = t323 * t364 * qJD(3) - t294 * t363 + t295 * t366;
t425 = t363 * t376 + t366 * t371;
t305 = t425 * t364;
t510 = qJD(3) * t305 - t366 * t294 - t295 * t363;
t552 = -t363 * t596 + t595 * t366;
t307 = t425 * t367;
t378 = cos(qJ(1));
t516 = t377 * t378;
t373 = sin(qJ(1));
t523 = t372 * t373;
t311 = -t368 * t516 + t523;
t520 = t373 * t377;
t521 = t372 * t378;
t312 = t368 * t521 + t520;
t529 = t365 * t378;
t167 = t305 * t529 + t307 * t311 + t312 * t323;
t273 = -t311 * t364 + t367 * t529;
t370 = sin(qJ(5));
t375 = cos(qJ(5));
t138 = t167 * t375 + t273 * t370;
t369 = sin(qJ(6));
t374 = cos(qJ(6));
t304 = t363 * t535 - t364 * t518;
t306 = t323 * t367;
t412 = t304 * t529 + t306 * t311 - t312 * t425;
t593 = t138 * t369 - t374 * t412;
t592 = t138 * t374 + t369 * t412;
t591 = -pkin(11) * t452 + t552;
t292 = t367 * t301;
t211 = -t270 * t364 + t292;
t472 = t364 * t502;
t568 = pkin(3) * t294;
t589 = -pkin(3) * t472 - t510 * pkin(4) - pkin(11) * t594 + t211 + t568;
t553 = t595 * t363 + t366 * t596;
t505 = qJD(1) * t368;
t347 = qJD(2) + t505;
t476 = t377 * t506;
t459 = t347 * t367 - t364 * t476;
t436 = qJD(3) + t459;
t285 = t375 * t436;
t450 = t376 * t476;
t429 = t367 * t450;
t451 = t371 * t477;
t241 = -t347 * t533 - t429 + t451;
t414 = t367 * t524 + t522;
t397 = t414 * t365;
t243 = qJD(1) * t397 + t347 * t535;
t426 = -t241 * t363 + t366 * t243;
t150 = t370 * t426 - t285;
t460 = -t366 * t241 - t243 * t363;
t578 = qJD(5) - t460;
t590 = t150 * t578;
t267 = t305 * t370 - t375 * t367;
t512 = -qJD(5) * t267 - t370 * t452 - t375 * t594;
t268 = t305 * t375 + t367 * t370;
t511 = qJD(5) * t268 - t370 * t594 + t375 * t452;
t458 = t375 * t578;
t492 = qJDD(1) * t368;
t346 = qJDD(2) + t492;
t490 = qJDD(1) * t377;
t467 = t365 * t490;
t447 = t367 * t467;
t491 = qJDD(1) * t372;
t468 = t365 * t491;
t474 = t364 * t496;
t155 = t347 * t474 + qJD(3) * t429 + t346 * t535 + t371 * t447 + qJD(2) * t450 + t376 * t468 + (-qJD(2) * t367 - qJD(3)) * t451;
t380 = qJD(2) * t415 + qJD(3) * t414;
t156 = -t346 * t533 + t347 * t472 + t365 * (qJD(1) * t380 + t371 * t491) - t376 * t447;
t98 = -t155 * t363 - t366 * t156;
t97 = qJDD(5) - t98;
t588 = -t370 * t97 - t578 * t458;
t149 = qJD(6) + t150;
t587 = t167 * t370 - t273 * t375;
t360 = t365 ^ 2;
t572 = 0.2e1 * t360;
t554 = pkin(4) * t452 + t553;
t152 = t370 * t436 + t375 * t426;
t103 = t152 * t369 - t374 * t578;
t586 = t103 * t578;
t543 = t460 * t375;
t112 = t369 * t426 + t374 * t543;
t498 = qJD(6) * t369;
t499 = qJD(5) * t375;
t392 = -t370 * t498 + t374 * t499 - t112;
t582 = t392 * t149;
t351 = pkin(2) * t526;
t280 = pkin(3) * t367 - t371 * t471 + t351;
t509 = pkin(10) * t533 + t350;
t296 = qJ(4) * t533 + t509;
t216 = t363 * t280 + t366 * t296;
t202 = pkin(11) * t367 + t216;
t359 = pkin(3) * t376 + pkin(2);
t225 = pkin(4) * t304 - pkin(11) * t305 - t359 * t364;
t513 = t375 * t202 + t370 * t225;
t580 = t367 * t517 - t525;
t261 = -t365 * t580 - t368 * t533;
t262 = t368 * t535 + t397;
t192 = -t261 * t363 + t262 * t366;
t530 = t365 * t377;
t310 = t364 * t530 - t368 * t367;
t303 = t310 * t375;
t157 = t192 * t370 + t303;
t500 = qJD(5) * t370;
t581 = t202 * t500 - t225 * t499 + t589 * t370 - t375 * t591;
t579 = g(1) * t378 + g(2) * t373;
t493 = qJD(1) * qJD(2);
t470 = t372 * t493;
t448 = t365 * t470;
t245 = t346 * t367 + qJDD(3) + (t448 - t467) * t364;
t236 = t347 * t567 + (t479 * t530 + t352) * qJD(1);
t239 = pkin(2) * t347 + t269;
t409 = -pkin(2) * t377 - t372 * t567 - pkin(1);
t297 = t409 * t365;
t286 = qJD(1) * t297;
t147 = t376 * t236 + (t239 * t367 + t286 * t364) * t371;
t488 = qJD(2) * t571;
t453 = qJD(1) * t488;
t480 = pkin(9) * t467 + qJDD(1) * t352 + t377 * t453;
t391 = -pkin(9) * t448 + t480;
t185 = (t346 * t364 + (-t470 + t490) * t367 * t365) * pkin(10) + t391;
t487 = pkin(1) * t490;
t342 = t368 * t487;
t469 = t377 * t493;
t405 = -t469 - t491;
t190 = pkin(2) * t346 - t372 * t453 + t405 * t445 + t342;
t399 = t423 * qJD(2);
t229 = (qJD(1) * t399 + qJDD(1) * t409) * t365;
t440 = -t371 * t185 + t190 * t526 + t229 * t533;
t61 = -qJD(3) * t147 + t440;
t43 = pkin(3) * t245 - qJ(4) * t155 - qJD(4) * t243 + t61;
t388 = -t376 * t185 - t190 * t527 - t229 * t535 + t236 * t502 - t239 * t473 - t286 * t474;
t48 = -qJ(4) * t156 - qJD(4) * t241 - t388;
t18 = t363 * t43 + t366 * t48;
t16 = pkin(11) * t245 + t18;
t134 = -t190 * t364 + t367 * t229;
t85 = pkin(3) * t156 + qJDD(4) + t134;
t99 = t155 * t366 - t156 * t363;
t25 = -pkin(4) * t98 - pkin(11) * t99 + t85;
t146 = -t371 * t236 + t239 * t526 + t286 * t533;
t119 = -t243 * qJ(4) + t146;
t110 = pkin(3) * t436 + t119;
t120 = -qJ(4) * t241 + t147;
t528 = t366 * t120;
t59 = t363 * t110 + t528;
t52 = pkin(11) * t436 + t59;
t188 = -t239 * t364 + t367 * t286;
t153 = pkin(3) * t241 + qJD(4) + t188;
t78 = -pkin(4) * t460 - pkin(11) * t426 + t153;
t27 = t370 * t78 + t375 * t52;
t6 = -qJD(5) * t27 - t16 * t370 + t375 * t25;
t4 = -pkin(5) * t97 - t6;
t313 = -t368 * t520 - t521;
t531 = t365 * t373;
t275 = -t313 * t364 + t367 * t531;
t314 = -t368 * t523 + t516;
t389 = t305 * t531 + t307 * t313 - t314 * t323;
t139 = t275 * t375 - t370 * t389;
t385 = t305 * t368 + (t307 * t377 - t323 * t372) * t365;
t402 = g(1) * t139 + g(2) * t587 + g(3) * (-t370 * t385 - t303);
t577 = t149 * (pkin(5) * t152 + pkin(12) * t149) + t4 + t402;
t358 = -pkin(3) * t366 - pkin(4);
t317 = -pkin(5) * t375 - pkin(12) * t370 + t358;
t461 = -t375 * t245 + t370 * t99;
t55 = qJD(5) * t152 + t461;
t53 = qJDD(6) + t55;
t63 = t119 * t363 + t528;
t576 = t149 * (-t63 + t578 * (pkin(5) * t370 - pkin(12) * t375)) + t317 * t53;
t484 = t364 * t529;
t418 = t311 * t367 + t484;
t575 = t312 * t371 + t376 * t418;
t210 = t368 * t474 + (t413 * qJD(2) + qJD(3) * t580) * t365;
t416 = t364 * t368 + t367 * t530;
t508 = pkin(9) * t530 + t352;
t258 = pkin(10) * t416 + t508;
t248 = t376 * t258;
t266 = pkin(2) * t368 + t353 - t424;
t345 = t377 * t488;
t271 = -qJD(2) * t424 + t345;
t272 = t386 * qJD(2);
t302 = t365 * t399;
t381 = -t371 * t271 + t272 * t526 + t302 * t533 + (-t248 + (-t266 * t367 - t297 * t364) * t371) * qJD(3);
t503 = qJD(2) * t372;
t475 = t365 * t503;
t449 = t364 * t475;
t69 = pkin(3) * t449 - qJ(4) * t210 - qJD(4) * t262 + t381;
t209 = t365 * t380 + t368 * t472;
t387 = -t258 * t502 + t266 * t473 + t376 * t271 + t272 * t527 + t297 * t474 + t302 * t535;
t74 = -qJ(4) * t209 - qJD(4) * t261 + t387;
t37 = t363 * t69 + t366 * t74;
t34 = pkin(11) * t449 + t37;
t439 = -t258 * t371 + t266 * t526 + t297 * t533;
t122 = -pkin(3) * t310 - qJ(4) * t262 + t439;
t482 = t266 * t527 + t297 * t535 + t248;
t132 = -qJ(4) * t261 + t482;
t73 = t363 * t122 + t366 * t132;
t67 = -pkin(11) * t310 + t73;
t191 = t366 * t261 + t262 * t363;
t205 = -t266 * t364 + t367 * t297;
t420 = pkin(3) * t261 + t205;
t89 = pkin(4) * t191 - pkin(11) * t192 + t420;
t431 = t370 * t89 + t375 * t67;
t143 = t366 * t209 + t210 * t363;
t144 = -t209 * t363 + t210 * t366;
t212 = -t272 * t364 + t367 * t302;
t421 = pkin(3) * t209 + t212;
t57 = pkin(4) * t143 - pkin(11) * t144 + t421;
t573 = -qJD(5) * t431 - t34 * t370 + t375 * t57;
t105 = t152 * t374 + t369 * t578;
t54 = qJD(5) * t285 + t370 * t245 + t375 * t99 - t426 * t500;
t20 = qJD(6) * t105 + t369 * t54 - t374 * t97;
t5 = t375 * t16 + t370 * t25 + t78 * t499 - t500 * t52;
t3 = pkin(12) * t97 + t5;
t22 = pkin(12) * t578 + t27;
t116 = t363 * t120;
t58 = t366 * t110 - t116;
t51 = -pkin(4) * t436 - t58;
t35 = t150 * pkin(5) - t152 * pkin(12) + t51;
t435 = t22 * t369 - t35 * t374;
t17 = -t363 * t48 + t366 * t43;
t15 = -pkin(4) * t245 - t17;
t8 = pkin(5) * t55 - pkin(12) * t54 + t15;
t1 = -t435 * qJD(6) + t374 * t3 + t369 * t8;
t569 = pkin(2) * t364;
t561 = -pkin(5) * t510 + t513 * qJD(5) + t370 * t591 + t375 * t589;
t497 = qJD(6) * t374;
t19 = -t152 * t498 + t369 * t97 + t374 * t54 + t497 * t578;
t560 = t19 * t369;
t559 = t20 * t375;
t557 = t369 * t53;
t555 = t374 * t53;
t102 = pkin(3) * t243 + pkin(4) * t426 - pkin(11) * t460;
t64 = t119 * t366 - t116;
t550 = t370 * t102 + t375 * t64;
t548 = t103 * t149;
t547 = t105 * t149;
t546 = t105 * t460;
t545 = t150 * t426;
t544 = t152 * t426;
t541 = t310 * t370;
t357 = pkin(3) * t363 + pkin(11);
t539 = t357 * t369;
t538 = t357 * t374;
t379 = qJD(1) ^ 2;
t537 = t360 * t379;
t536 = t364 * t370;
t534 = t364 * t375;
t532 = t365 * t372;
t223 = t268 * t369 - t374 * t304;
t515 = -qJD(6) * t223 + t369 * t510 + t374 * t512;
t224 = t268 * t374 + t304 * t369;
t514 = qJD(6) * t224 + t369 * t512 - t374 * t510;
t361 = t372 ^ 2;
t507 = -t377 ^ 2 + t361;
t501 = qJD(5) * t357;
t495 = qJD(2) - t347;
t489 = t360 * t570;
t486 = t377 * t537;
t485 = t364 * t532;
t478 = t364 * t504;
t36 = -t363 * t74 + t366 * t69;
t462 = t105 * t500 - t19 * t375;
t72 = t122 * t366 - t363 * t132;
t215 = t280 * t366 - t363 * t296;
t457 = t149 * t374;
t456 = t347 + t505;
t455 = qJD(1) * t495;
t454 = t346 + t492;
t201 = -pkin(4) * t367 - t215;
t145 = pkin(5) * t267 - pkin(12) * t268 + t201;
t446 = -pkin(12) * t510 - qJD(6) * t145 + t581;
t443 = g(1) * t314 + g(2) * t312;
t126 = pkin(12) * t304 + t513;
t441 = -pkin(5) * t511 + pkin(12) * t512 + qJD(6) * t126 - t554;
t437 = -t295 + t474;
t12 = t22 * t374 + t35 * t369;
t31 = pkin(12) * t191 + t431;
t158 = t192 * t375 - t541;
t66 = pkin(4) * t310 - t72;
t45 = pkin(5) * t157 - pkin(12) * t158 + t66;
t434 = t31 * t374 + t369 * t45;
t433 = -t31 * t369 + t374 * t45;
t26 = -t370 * t52 + t375 * t78;
t430 = -t370 * t67 + t375 * t89;
t115 = t158 * t374 + t191 * t369;
t114 = t158 * t369 - t374 * t191;
t428 = -t202 * t370 + t225 * t375;
t422 = t375 * t97 + (t370 * t460 - t500) * t578;
t419 = -t149 * t497 - t557;
t417 = t313 * t367 + t364 * t531;
t411 = t375 * t34 + t370 * t57 + t89 * t499 - t500 * t67;
t111 = t369 * t543 - t374 * t426;
t410 = (-t369 * t499 + t111) * t149;
t408 = qJD(3) * t436;
t407 = -t357 * t97 + t51 * t578;
t169 = -t304 * t531 - t306 * t313 - t314 * t425;
t194 = -t304 * t368 + (-t306 * t377 - t372 * t425) * t365;
t401 = g(1) * t169 + g(2) * t412 + g(3) * t194;
t400 = t311 * t527 - t312 * t376 + t371 * t484;
t396 = -t15 - t401;
t395 = g(3) * t532 + t443;
t394 = t508 * t347;
t393 = t436 * t485;
t21 = -pkin(5) * t578 - t26;
t390 = -pkin(12) * t53 + (t21 + t26) * t149;
t33 = -pkin(4) * t449 - t36;
t2 = -qJD(6) * t12 - t369 * t3 + t374 * t8;
t383 = qJD(6) * t149 * t357 + t401;
t382 = -g(1) * t389 + g(2) * t167 - g(3) * t385 + (pkin(12) * t426 - qJD(6) * t317 + t550) * t149;
t309 = pkin(3) * t527 - t471;
t231 = (-t307 * t372 - t323 * t377) * t365;
t230 = (-t306 * t372 + t377 * t425) * t365;
t228 = t314 * t376 + t371 * t417;
t227 = -t314 * t371 + t376 * t417;
t204 = t231 * t375 + t370 * t485;
t199 = -t307 * t314 - t313 * t323;
t198 = -t306 * t314 + t313 * t425;
t197 = -t307 * t312 + t311 * t323;
t196 = -t306 * t312 - t311 * t425;
t162 = t199 * t375 + t314 * t536;
t161 = t197 * t375 + t312 * t536;
t160 = t375 * t385 - t541;
t140 = t275 * t370 + t375 * t389;
t125 = -pkin(5) * t304 - t428;
t92 = t140 * t374 - t169 * t369;
t91 = -t140 * t369 - t169 * t374;
t88 = qJD(5) * t158 + t144 * t370 - t375 * t449;
t87 = -qJD(5) * t157 + t144 * t375 + t370 * t449;
t39 = qJD(6) * t115 - t374 * t143 + t369 * t87;
t38 = -qJD(6) * t114 + t143 * t369 + t374 * t87;
t30 = -pkin(5) * t191 - t430;
t28 = -pkin(5) * t426 - t102 * t375 + t370 * t64;
t13 = pkin(5) * t88 - pkin(12) * t87 + t33;
t10 = -pkin(5) * t143 - t573;
t9 = pkin(12) * t143 + t411;
t7 = [qJDD(1), g(1) * t373 - g(2) * t378, t579 (qJDD(1) * t361 + 0.2e1 * t372 * t469) * t360 (t372 * t490 - t493 * t507) * t572 (qJD(2) * t377 * t456 + t372 * t454) * t365 (t377 * t454 - t456 * t503) * t365, t346 * t368, t487 * t572 + (-pkin(9) * t532 + t353) * t346 + (-pkin(9) * t468 + t342) * t368 + g(1) * t312 - g(2) * t314 + (-t394 + (-t368 * t508 - 0.2e1 * t489) * qJD(1)) * qJD(2) -(-pkin(9) * t475 + t345) * t347 - t508 * t346 - t391 * t368 - g(1) * t311 - g(2) * t313 + t405 * pkin(1) * t572, t155 * t262 + t210 * t243, -t155 * t261 - t156 * t262 - t209 * t243 - t210 * t241, -t155 * t310 + t210 * t436 + t243 * t449 + t262 * t245, t156 * t310 - t209 * t436 - t241 * t449 - t261 * t245, qJD(2) * t393 - t245 * t310, -g(1) * t400 - g(2) * t228 + t134 * t261 + t146 * t449 + t205 * t156 + t188 * t209 + t212 * t241 + t245 * t439 - t61 * t310 + t381 * t436, -g(1) * t575 - g(2) * t227 + t134 * t262 - t147 * t449 + t205 * t155 + t188 * t210 + t212 * t243 - t482 * t245 - t310 * t388 - t387 * t436, -g(1) * t273 - g(2) * t275 - t143 * t59 - t144 * t58 - t17 * t192 - t18 * t191 - t36 * t426 + t37 * t460 - t72 * t99 + t73 * t98, t18 * t73 + t59 * t37 + t17 * t72 + t58 * t36 + t85 * t420 + t153 * t421 - g(1) * (-pkin(1) * t373 + t309 * t311 - t312 * t359) - g(2) * (pkin(1) * t378 + t309 * t313 + t314 * t359) - t579 * t365 * (pkin(3) * t535 + t367 * t562 + pkin(9)) t152 * t87 + t158 * t54, -t150 * t87 - t152 * t88 - t157 * t54 - t158 * t55, t143 * t152 + t158 * t97 + t191 * t54 + t578 * t87, -t143 * t150 - t157 * t97 - t191 * t55 - t578 * t88, t143 * t578 + t191 * t97, -g(1) * t138 - g(2) * t140 + t26 * t143 + t15 * t157 + t33 * t150 + t6 * t191 + t430 * t97 + t51 * t88 + t66 * t55 + t573 * t578, g(1) * t587 - g(2) * t139 - t27 * t143 + t15 * t158 + t33 * t152 - t5 * t191 - t411 * t578 - t431 * t97 + t51 * t87 + t66 * t54, t105 * t38 + t115 * t19, -t103 * t38 - t105 * t39 - t114 * t19 - t115 * t20, t105 * t88 + t115 * t53 + t149 * t38 + t157 * t19, -t103 * t88 - t114 * t53 - t149 * t39 - t157 * t20, t149 * t88 + t157 * t53 (-qJD(6) * t434 + t13 * t374 - t369 * t9) * t149 + t433 * t53 + t2 * t157 - t435 * t88 + t10 * t103 + t30 * t20 + t4 * t114 + t21 * t39 - g(1) * t592 - g(2) * t92 -(qJD(6) * t433 + t13 * t369 + t374 * t9) * t149 - t434 * t53 - t1 * t157 - t12 * t88 + t10 * t105 + t30 * t19 + t4 * t115 + t21 * t38 + g(1) * t593 - g(2) * t91; 0, 0, 0, -t372 * t486, t507 * t537 (t377 * t455 + t491) * t365 (-t495 * t504 + t490) * t365, t346, t379 * t489 - g(1) * t313 + g(2) * t311 + t342 + (-pkin(9) * t491 - g(3) * t377) * t365 + (-qJD(2) * t508 + t394) * qJD(1), pkin(1) * t486 + t344 * t347 + (pkin(9) * t455 + g(3)) * t532 + t443 - t480, t155 * t535 + t243 * t437, t241 * t295 + t243 * t294 + (t155 * t376 - t156 * t371 + (-t241 * t376 - t243 * t371) * qJD(3)) * t364, t155 * t367 - t295 * t436 + (-t243 * t477 + t371 * t245 + t376 * t408) * t364, -t156 * t367 + t294 * t436 + (t241 * t477 + t376 * t245 - t371 * t408) * t364, -qJD(1) * t393 + t245 * t367, -t509 * t408 + (-pkin(10) * t535 + t351) * t245 + t61 * t367 - t156 * t569 - t134 * t533 - t438 * t436 - t211 * t241 - g(1) * (t313 * t376 - t314 * t527) - g(2) * (-t311 * t376 - t312 * t527) + (-t294 + t472) * t188 + (-g(3) * t413 - t146 * t478) * t365, -t509 * t245 + t388 * t367 - t155 * t569 + t134 * t535 - t211 * t243 - g(1) * (-t313 * t371 - t314 * t526) - g(2) * (t311 * t371 - t312 * t526) + t437 * t188 + (g(3) * t415 + t147 * t478) * t365 + (pkin(10) * t472 - t597) * t436, -t17 * t305 - t18 * t304 - t215 * t99 + t216 * t98 - t395 * t364 + t553 * t426 + t552 * t460 - t510 * t59 + t58 * t594, t18 * t216 + t17 * t215 - t153 * (t292 + t568) - g(1) * (-t309 * t314 + t313 * t359) - g(2) * (-t309 * t312 - t311 * t359) + t552 * t59 - t553 * t58 - g(3) * (-t309 * t372 + t359 * t377) * t365 + (-t85 * t359 + (pkin(3) * t502 + t270) * t153) * t364, t152 * t512 + t268 * t54, -t150 * t512 - t152 * t511 - t267 * t54 - t268 * t55, t152 * t510 + t268 * t97 + t304 * t54 + t512 * t578, -t150 * t510 - t267 * t97 - t304 * t55 - t511 * t578, t304 * t97 + t510 * t578, t428 * t97 + t6 * t304 + t201 * t55 + t15 * t267 - g(1) * t162 - g(2) * t161 - g(3) * t204 + t511 * t51 + t510 * t26 + ((-qJD(5) * t202 - t589) * t375 + (-qJD(5) * t225 - t591) * t370) * t578 + t554 * t150, -t513 * t97 - t5 * t304 + t201 * t54 + t15 * t268 - g(1) * (-t199 * t370 + t314 * t534) - g(2) * (-t197 * t370 + t312 * t534) - g(3) * (-t231 * t370 + t375 * t485) + t512 * t51 - t510 * t27 + t581 * t578 + t554 * t152, t105 * t515 + t19 * t224, -t103 * t515 - t105 * t514 - t19 * t223 - t20 * t224, t105 * t511 + t149 * t515 + t19 * t267 + t224 * t53, -t103 * t511 - t149 * t514 - t20 * t267 - t223 * t53, t149 * t511 + t267 * t53 (-t126 * t369 + t145 * t374) * t53 + t2 * t267 + t125 * t20 + t4 * t223 - g(1) * (t162 * t374 + t198 * t369) - g(2) * (t161 * t374 + t196 * t369) - g(3) * (t204 * t374 + t230 * t369) + t514 * t21 + (t369 * t446 - t374 * t441) * t149 - t511 * t435 + t561 * t103 -(t126 * t374 + t145 * t369) * t53 - t1 * t267 + t125 * t19 + t4 * t224 - g(1) * (-t162 * t369 + t198 * t374) - g(2) * (-t161 * t369 + t196 * t374) - g(3) * (-t204 * t369 + t230 * t374) + t515 * t21 + (t369 * t441 + t374 * t446) * t149 - t511 * t12 + t561 * t105; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t243 * t241, -t241 ^ 2 + t243 ^ 2, t241 * t436 + t155, t243 * t436 - t156, t245, -g(1) * t227 + g(2) * t575 + g(3) * t261 + t147 * t459 - t188 * t243 + t440, g(1) * t228 - g(2) * t400 + g(3) * t262 + t146 * t436 + t188 * t241 + t388 (t363 * t98 - t366 * t99) * pkin(3) + (-t64 + t58) * t460 + (t59 - t63) * t426, t58 * t63 - t59 * t64 + (-t153 * t243 + t17 * t366 + t18 * t363 + t395 * t371 + (-g(1) * t417 + g(2) * t418 - g(3) * t416) * t376) * pkin(3), t152 * t458 + t370 * t54 (t54 - t590) * t375 + (-t152 * t578 - t55) * t370, -t544 - t588, t422 + t545, -t578 * t426, -t63 * t150 - t26 * t426 + t358 * t55 + (t578 * t64 + t407) * t370 + ((-t102 - t501) * t578 + t396) * t375, t358 * t54 + t550 * t578 + t27 * t426 - t63 * t152 + t407 * t375 + (t501 * t578 - t396) * t370, t19 * t370 * t374 + t105 * t392, t103 * t112 + t105 * t111 + (-t103 * t374 - t105 * t369) * t499 + (-t560 - t20 * t374 + (t103 * t369 - t105 * t374) * qJD(6)) * t370 (-t546 + t555) * t370 + t582 + t462, t559 + t410 + (t419 - t586) * t370, t149 * t370 * t578 - t375 * t53, -t28 * t103 - t21 * t111 + t576 * t374 + t382 * t369 + (-t53 * t539 - t2 + (t103 * t357 + t21 * t369) * qJD(5) - t383 * t374) * t375 + (t21 * t497 + t435 * t460 + t20 * t357 + t4 * t369 + (t149 * t539 - t435) * qJD(5)) * t370, -t28 * t105 - t21 * t112 - t576 * t369 + t382 * t374 + (-t53 * t538 + t1 + (t105 * t357 + t21 * t374) * qJD(5) + t383 * t369) * t375 + (-t21 * t498 + t12 * t460 + t357 * t19 + t4 * t374 + (t149 * t538 - t12) * qJD(5)) * t370; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t426 ^ 2 - t460 ^ 2, -g(1) * t275 + g(2) * t273 + g(3) * t310 + t426 * t58 - t460 * t59 + t85, 0, 0, 0, 0, 0, t422 - t545, -t544 + t588, 0, 0, 0, 0, 0, -t559 + t410 + (t419 + t586) * t370 (-t546 - t555) * t370 - t582 + t462; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t152 * t150, -t150 ^ 2 + t152 ^ 2, t54 + t590, -t461 + (-qJD(5) + t578) * t152, t97, -t152 * t51 + t27 * t578 - t402 + t6, g(1) * t140 - g(2) * t138 + g(3) * t160 + t150 * t51 + t26 * t578 - t5, t105 * t457 + t560 (t19 - t548) * t374 + (-t20 - t547) * t369, -t105 * t152 + t149 * t457 + t557, -t149 ^ 2 * t369 + t103 * t152 + t555, -t149 * t152, -pkin(5) * t20 - t27 * t103 + t152 * t435 + t390 * t369 - t374 * t577, -pkin(5) * t19 - t27 * t105 + t12 * t152 + t369 * t577 + t390 * t374; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t105 * t103, -t103 ^ 2 + t105 ^ 2, t19 + t548, -t20 + t547, t53, t12 * t149 - t21 * t105 - g(1) * t91 - g(2) * t593 - g(3) * (-t160 * t369 - t194 * t374) + t2, -t435 * t149 + t21 * t103 + g(1) * t92 - g(2) * t592 - g(3) * (-t160 * t374 + t194 * t369) - t1;];
tau_reg  = t7;