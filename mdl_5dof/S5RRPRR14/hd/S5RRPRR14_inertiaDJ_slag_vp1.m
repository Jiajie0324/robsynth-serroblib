% Calculate time derivative of joint inertia matrix for
% S5RRPRR14
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d1,d2,d4,d5,theta3]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% rSges [6x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% Icges [6x6]
%   inertia of all robot links about their respective center of mass, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertiavector2matrix.m)
% 
% Output:
% MqD [5x5]
%   time derivative of inertia matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 20:40
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S5RRPRR14_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(10,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR14_inertiaDJ_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRR14_inertiaDJ_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S5RRPRR14_inertiaDJ_slag_vp1: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRPRR14_inertiaDJ_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRPRR14_inertiaDJ_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRPRR14_inertiaDJ_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 20:35:49
% EndTime: 2019-12-31 20:36:32
% DurationCPUTime: 22.03s
% Computational Cost: add. (62750->1071), mult. (119209->1469), div. (0->0), fcn. (132658->12), ass. (0->433)
t397 = sin(pkin(10));
t399 = cos(pkin(10));
t400 = cos(pkin(5));
t398 = sin(pkin(5));
t403 = sin(qJ(2));
t495 = t398 * t403;
t371 = -t397 * t495 + t399 * t400;
t496 = t397 * t400;
t372 = t399 * t495 + t496;
t406 = cos(qJ(2));
t493 = t398 * t406;
t291 = Icges(4,5) * t372 + Icges(4,6) * t371 - Icges(4,3) * t493;
t293 = Icges(4,1) * t372 + Icges(4,4) * t371 - Icges(4,5) * t493;
t465 = qJD(2) * t398;
t331 = (Icges(4,6) * t403 + (Icges(4,4) * t399 - Icges(4,2) * t397) * t406) * t465;
t332 = (Icges(4,5) * t403 + (Icges(4,1) * t399 - Icges(4,4) * t397) * t406) * t465;
t500 = Icges(3,4) * t403;
t354 = Icges(3,6) * t400 + (Icges(3,2) * t406 + t500) * t398;
t499 = Icges(3,4) * t406;
t355 = Icges(3,5) * t400 + (Icges(3,1) * t403 + t499) * t398;
t360 = (Icges(3,5) * t406 - Icges(3,6) * t403) * t465;
t361 = (-Icges(3,2) * t403 + t499) * t465;
t362 = (Icges(3,1) * t406 - t500) * t465;
t463 = qJD(2) * t406;
t444 = t398 * t463;
t464 = qJD(2) * t403;
t445 = t398 * t464;
t530 = t371 * t331 + t372 * t332 + t400 * t360 + t361 * t493 + t362 * t495 + (t291 - t354) * t445 + (t293 * t399 + t355) * t444;
t407 = cos(qJ(1));
t488 = t406 * t407;
t404 = sin(qJ(1));
t491 = t403 * t404;
t376 = -t400 * t491 + t488;
t453 = t400 * t488;
t415 = t453 - t491;
t321 = qJD(1) * t376 + qJD(2) * t415;
t461 = pkin(10) + qJ(4);
t395 = sin(t461);
t489 = t404 * t406;
t490 = t403 * t407;
t374 = t400 * t490 + t489;
t442 = cos(t461);
t425 = t398 * t442;
t410 = -t374 * t395 - t407 * t425;
t467 = qJD(1) * t404;
t447 = t398 * t467;
t227 = qJD(4) * t410 + t321 * t442 + t395 * t447;
t492 = t398 * t407;
t336 = t374 * t442 - t395 * t492;
t402 = sin(qJ(5));
t405 = cos(qJ(5));
t271 = t336 * t405 - t402 * t415;
t375 = t400 * t489 + t490;
t320 = qJD(1) * t375 + qJD(2) * t374;
t157 = -qJD(5) * t271 - t227 * t402 + t320 * t405;
t270 = -t336 * t402 - t405 * t415;
t158 = qJD(5) * t270 + t227 * t405 + t320 * t402;
t174 = Icges(6,5) * t271 + Icges(6,6) * t270 - Icges(6,3) * t410;
t176 = Icges(6,4) * t271 + Icges(6,2) * t270 - Icges(6,6) * t410;
t178 = Icges(6,1) * t271 + Icges(6,4) * t270 - Icges(6,5) * t410;
t417 = qJD(1) * t425;
t226 = qJD(4) * t336 + t321 * t395 - t404 * t417;
t81 = Icges(6,5) * t158 + Icges(6,6) * t157 + Icges(6,3) * t226;
t83 = Icges(6,4) * t158 + Icges(6,2) * t157 + Icges(6,6) * t226;
t85 = Icges(6,1) * t158 + Icges(6,4) * t157 + Icges(6,5) * t226;
t19 = t157 * t176 + t158 * t178 + t174 * t226 + t270 * t83 + t271 * t85 - t410 * t81;
t494 = t398 * t404;
t338 = t376 * t442 + t395 * t494;
t272 = -t338 * t402 + t375 * t405;
t273 = t338 * t405 + t375 * t402;
t411 = -t376 * t395 + t404 * t425;
t175 = Icges(6,5) * t273 + Icges(6,6) * t272 - Icges(6,3) * t411;
t177 = Icges(6,4) * t273 + Icges(6,2) * t272 - Icges(6,6) * t411;
t179 = Icges(6,1) * t273 + Icges(6,4) * t272 - Icges(6,5) * t411;
t319 = -qJD(1) * t374 - qJD(2) * t375;
t466 = qJD(1) * t407;
t446 = t398 * t466;
t225 = qJD(4) * t411 + t319 * t442 + t395 * t446;
t318 = -qJD(1) * t453 - t407 * t463 + (qJD(2) * t400 + qJD(1)) * t491;
t155 = -qJD(5) * t273 - t225 * t402 - t318 * t405;
t156 = qJD(5) * t272 + t225 * t405 - t318 * t402;
t224 = qJD(4) * t338 + t319 * t395 - t407 * t417;
t80 = Icges(6,5) * t156 + Icges(6,6) * t155 + Icges(6,3) * t224;
t82 = Icges(6,4) * t156 + Icges(6,2) * t155 + Icges(6,6) * t224;
t84 = Icges(6,1) * t156 + Icges(6,4) * t155 + Icges(6,5) * t224;
t20 = t157 * t177 + t158 * t179 + t175 * t226 + t270 * t82 + t271 * t84 - t410 * t80;
t357 = t400 * t395 + t403 * t425;
t322 = qJD(4) * t357 + t395 * t444;
t356 = t395 * t495 - t400 * t442;
t323 = -qJD(4) * t356 + t425 * t463;
t416 = -t357 * t405 + t402 * t493;
t240 = qJD(5) * t416 - t323 * t402 + t405 * t445;
t333 = -t357 * t402 - t405 * t493;
t241 = qJD(5) * t333 + t323 * t405 + t402 * t445;
t143 = Icges(6,5) * t241 + Icges(6,6) * t240 + Icges(6,3) * t322;
t144 = Icges(6,4) * t241 + Icges(6,2) * t240 + Icges(6,6) * t322;
t145 = Icges(6,1) * t241 + Icges(6,4) * t240 + Icges(6,5) * t322;
t213 = -Icges(6,5) * t416 + Icges(6,6) * t333 + Icges(6,3) * t356;
t214 = -Icges(6,4) * t416 + Icges(6,2) * t333 + Icges(6,6) * t356;
t215 = -Icges(6,1) * t416 + Icges(6,4) * t333 + Icges(6,5) * t356;
t34 = -t143 * t410 + t144 * t270 + t145 * t271 + t157 * t214 + t158 * t215 + t213 * t226;
t67 = -t174 * t410 + t176 * t270 + t178 * t271;
t68 = -t175 * t410 + t177 * t270 + t179 * t271;
t91 = -t213 * t410 + t214 * t270 + t215 * t271;
t2 = -t19 * t410 - t20 * t411 + t224 * t68 + t226 * t67 + t322 * t91 + t34 * t356;
t529 = -t2 / 0.2e1;
t292 = Icges(4,4) * t372 + Icges(4,2) * t371 - Icges(4,6) * t493;
t528 = t292 * t397;
t330 = (Icges(4,3) * t403 + (Icges(4,5) * t399 - Icges(4,6) * t397) * t406) * t465;
t527 = ((-qJD(2) * t528 - t330) * t493 + t530) * t400;
t285 = -t319 * t397 + t399 * t446;
t434 = t397 * t446;
t286 = t319 * t399 + t434;
t186 = Icges(4,5) * t286 + Icges(4,6) * t285 - Icges(4,3) * t318;
t244 = Icges(3,4) * t319 + Icges(3,2) * t318 + Icges(3,6) * t446;
t526 = t244 - t186;
t287 = -t321 * t397 + t399 * t447;
t435 = t397 * t447;
t288 = t321 * t399 + t435;
t187 = Icges(4,5) * t288 + Icges(4,6) * t287 + Icges(4,3) * t320;
t245 = Icges(3,4) * t321 - Icges(3,2) * t320 + Icges(3,6) * t447;
t525 = t245 - t187;
t344 = -t376 * t397 + t399 * t494;
t456 = t397 * t494;
t345 = t376 * t399 + t456;
t255 = Icges(4,5) * t345 + Icges(4,6) * t344 + Icges(4,3) * t375;
t300 = Icges(3,4) * t376 - Icges(3,2) * t375 + Icges(3,6) * t494;
t524 = -t255 + t300;
t342 = -t374 * t397 - t399 * t492;
t455 = t397 * t492;
t343 = t374 * t399 - t455;
t254 = Icges(4,5) * t343 + Icges(4,6) * t342 - Icges(4,3) * t415;
t299 = Icges(3,4) * t374 + Icges(3,2) * t415 - Icges(3,6) * t492;
t523 = -t299 + t254;
t396 = t407 * pkin(1);
t468 = pkin(7) * t494 + t396;
t522 = 2 * m(3);
t521 = 2 * m(4);
t520 = 2 * m(5);
t519 = 2 * m(6);
t518 = t398 ^ 2;
t517 = t224 / 0.2e1;
t516 = t226 / 0.2e1;
t515 = t322 / 0.2e1;
t514 = -t410 / 0.2e1;
t513 = -t411 / 0.2e1;
t512 = t356 / 0.2e1;
t511 = t400 / 0.2e1;
t510 = t404 / 0.2e1;
t509 = -rSges(6,3) - pkin(9);
t508 = pkin(4) * t336;
t507 = t227 * pkin(4);
t394 = pkin(3) * t399 + pkin(2);
t506 = -pkin(2) + t394;
t101 = t213 * t356 + t214 * t333 - t215 * t416;
t47 = t356 * t143 + t333 * t144 - t145 * t416 + t322 * t213 + t240 * t214 + t241 * t215;
t505 = t101 * t322 + t47 * t356;
t248 = Icges(5,5) * t323 - Icges(5,6) * t322 + Icges(5,3) * t445;
t249 = Icges(5,4) * t323 - Icges(5,2) * t322 + Icges(5,6) * t445;
t250 = Icges(5,1) * t323 - Icges(5,4) * t322 + Icges(5,5) * t445;
t277 = Icges(5,5) * t357 - Icges(5,6) * t356 - Icges(5,3) * t493;
t278 = Icges(5,4) * t357 - Icges(5,2) * t356 - Icges(5,6) * t493;
t279 = Icges(5,1) * t357 - Icges(5,4) * t356 - Icges(5,5) * t493;
t74 = -t248 * t493 - t356 * t249 + t357 * t250 + t277 * t445 - t322 * t278 + t323 * t279;
t504 = -t47 - t74;
t401 = -pkin(8) - qJ(3);
t503 = -rSges(5,3) + t401;
t86 = t156 * rSges(6,1) + t155 * rSges(6,2) + t224 * rSges(6,3);
t502 = t225 * pkin(4) + pkin(9) * t224 + t86;
t428 = -t158 * rSges(6,1) - t157 * rSges(6,2);
t87 = t226 * rSges(6,3) - t428;
t501 = t226 * pkin(9) + t507 + t87;
t498 = t320 * t401;
t497 = t415 * t401;
t487 = qJ(3) + t401;
t146 = rSges(6,1) * t241 + rSges(6,2) * t240 + rSges(6,3) * t322;
t486 = pkin(4) * t323 + pkin(9) * t322 + t146;
t440 = -t319 * pkin(2) + qJ(3) * t318;
t449 = pkin(3) * t434 + t318 * t401 + t319 * t394;
t166 = t440 + t449;
t462 = qJD(3) * t375;
t211 = -t440 + t462;
t209 = t400 * t211;
t485 = t400 * t166 + t209;
t312 = t320 * qJ(3);
t167 = pkin(3) * t435 + t321 * t506 - t312 - t498;
t364 = t415 * qJD(3);
t212 = t321 * pkin(2) + t312 - t364;
t484 = -t167 - t212;
t427 = -rSges(6,1) * t271 - rSges(6,2) * t270;
t180 = -rSges(6,3) * t410 - t427;
t483 = -pkin(9) * t410 + t180 + t508;
t181 = t273 * rSges(6,1) + t272 * rSges(6,2) - rSges(6,3) * t411;
t482 = t338 * pkin(4) - pkin(9) * t411 + t181;
t193 = t288 * rSges(4,1) + t287 * rSges(4,2) + t320 * rSges(4,3);
t481 = -t193 - t212;
t216 = -rSges(6,1) * t416 + rSges(6,2) * t333 + rSges(6,3) * t356;
t480 = pkin(4) * t357 + pkin(9) * t356 + t216;
t325 = t376 * pkin(2) + qJ(3) * t375;
t448 = pkin(3) * t456 - t375 * t401 + t376 * t394;
t239 = -t325 + t448;
t311 = t400 * t325;
t479 = t400 * t239 + t311;
t365 = t415 * qJ(3);
t385 = pkin(3) * t455;
t238 = t374 * t506 + t365 - t385 + t497;
t324 = pkin(2) * t374 - t365;
t478 = -t238 - t324;
t477 = -t239 - t325;
t260 = rSges(4,1) * t343 + rSges(4,2) * t342 - rSges(4,3) * t415;
t476 = -t260 - t324;
t261 = t345 * rSges(4,1) + t344 * rSges(4,2) + t375 * rSges(4,3);
t475 = -t261 - t325;
t296 = pkin(3) * t496 + (t403 * t506 + t406 * t487) * t398;
t377 = (pkin(2) * t403 - qJ(3) * t406) * t398;
t350 = t377 * t447;
t474 = t296 * t447 + t350;
t294 = rSges(4,1) * t372 + rSges(4,2) * t371 - rSges(4,3) * t493;
t473 = -t294 - t377;
t472 = -t296 - t377;
t347 = (-qJD(3) * t406 + (pkin(2) * t406 + qJ(3) * t403) * qJD(2)) * t398;
t471 = -(-t403 * t487 + t406 * t506) * t465 - t347;
t470 = t324 * t494 + t325 * t492;
t469 = -(rSges(4,3) * t403 + (rSges(4,1) * t399 - rSges(4,2) * t397) * t406) * t465 - t347;
t21 = t174 * t322 + t176 * t240 + t178 * t241 + t333 * t83 + t356 * t81 - t416 * t85;
t460 = t21 / 0.2e1 + t34 / 0.2e1;
t22 = t175 * t322 + t177 * t240 + t179 * t241 + t333 * t82 + t356 * t80 - t416 * t84;
t33 = -t143 * t411 + t144 * t272 + t145 * t273 + t155 * t214 + t156 * t215 + t213 * t224;
t459 = t22 / 0.2e1 + t33 / 0.2e1;
t75 = t174 * t356 + t176 * t333 - t178 * t416;
t458 = t75 / 0.2e1 + t91 / 0.2e1;
t76 = t175 * t356 + t177 * t333 - t179 * t416;
t92 = -t213 * t411 + t214 * t272 + t215 * t273;
t457 = t76 / 0.2e1 + t92 / 0.2e1;
t452 = t211 * t492 + t212 * t494 + t324 * t446;
t140 = t225 * rSges(5,1) - t224 * rSges(5,2) - t318 * rSges(5,3);
t253 = rSges(5,1) * t323 - rSges(5,2) * t322 + rSges(5,3) * t445;
t451 = -t253 + t471;
t192 = t286 * rSges(4,1) + t285 * rSges(4,2) - t318 * rSges(4,3);
t283 = rSges(5,1) * t357 - rSges(5,2) * t356 - rSges(5,3) * t493;
t450 = -t283 + t472;
t251 = t319 * rSges(3,1) + t318 * rSges(3,2) + rSges(3,3) * t446;
t237 = t338 * rSges(5,1) + rSges(5,2) * t411 + t375 * rSges(5,3);
t306 = t376 * rSges(3,1) - t375 * rSges(3,2) + rSges(3,3) * t494;
t443 = -t404 * pkin(1) + pkin(7) * t492;
t441 = t473 * t407;
t439 = t471 - t486;
t438 = t472 - t480;
t437 = t238 * t494 + t239 * t492 + t470;
t433 = -pkin(1) * t467 + pkin(7) * t446;
t432 = t450 * t407;
t431 = -t321 * rSges(3,1) + t320 * rSges(3,2);
t430 = -t227 * rSges(5,1) + t226 * rSges(5,2);
t429 = -rSges(5,1) * t336 - rSges(5,2) * t410;
t424 = t448 + t468;
t423 = t438 * t407;
t135 = Icges(5,5) * t227 - Icges(5,6) * t226 + Icges(5,3) * t320;
t137 = Icges(5,4) * t227 - Icges(5,2) * t226 + Icges(5,6) * t320;
t139 = Icges(5,1) * t227 - Icges(5,4) * t226 + Icges(5,5) * t320;
t230 = Icges(5,5) * t336 + Icges(5,6) * t410 - Icges(5,3) * t415;
t232 = Icges(5,4) * t336 + Icges(5,2) * t410 - Icges(5,6) * t415;
t234 = Icges(5,1) * t336 + Icges(5,4) * t410 - Icges(5,5) * t415;
t50 = -t137 * t356 + t139 * t357 - t232 * t322 + t234 * t323 + (-t135 * t406 + t230 * t464) * t398;
t66 = -t226 * t278 + t227 * t279 - t248 * t415 + t249 * t410 + t250 * t336 + t277 * t320;
t422 = t50 / 0.2e1 + t66 / 0.2e1 + t460;
t134 = Icges(5,5) * t225 - Icges(5,6) * t224 - Icges(5,3) * t318;
t136 = Icges(5,4) * t225 - Icges(5,2) * t224 - Icges(5,6) * t318;
t138 = Icges(5,1) * t225 - Icges(5,4) * t224 - Icges(5,5) * t318;
t231 = Icges(5,5) * t338 + Icges(5,6) * t411 + Icges(5,3) * t375;
t233 = Icges(5,4) * t338 + Icges(5,2) * t411 + Icges(5,6) * t375;
t235 = Icges(5,1) * t338 + Icges(5,4) * t411 + Icges(5,5) * t375;
t51 = -t136 * t356 + t138 * t357 - t233 * t322 + t235 * t323 + (-t134 * t406 + t231 * t464) * t398;
t65 = -t224 * t278 + t225 * t279 + t248 * t375 + t249 * t411 + t250 * t338 - t277 * t318;
t421 = t51 / 0.2e1 + t65 / 0.2e1 + t459;
t115 = -t230 * t493 - t232 * t356 + t234 * t357;
t129 = -t277 * t415 + t278 * t410 + t279 * t336;
t420 = t115 / 0.2e1 + t129 / 0.2e1 + t458;
t116 = -t231 * t493 - t233 * t356 + t235 * t357;
t130 = t277 * t375 + t278 * t411 + t279 * t338;
t419 = -t116 / 0.2e1 - t130 / 0.2e1 - t457;
t418 = t166 * t492 + t167 * t494 + t238 * t446 + t452;
t414 = -t374 * t394 + t385 + t443;
t413 = t433 + t462;
t305 = t374 * rSges(3,1) + rSges(3,2) * t415 - rSges(3,3) * t492;
t409 = t413 + t449;
t408 = (-t396 + (-pkin(3) * t397 - pkin(7)) * t494) * qJD(1) + t364 - t321 * t394;
t363 = (rSges(3,1) * t406 - rSges(3,2) * t403) * t465;
t358 = rSges(3,3) * t400 + (rSges(3,1) * t403 + rSges(3,2) * t406) * t398;
t353 = Icges(3,3) * t400 + (Icges(3,5) * t403 + Icges(3,6) * t406) * t398;
t302 = Icges(3,1) * t376 - Icges(3,4) * t375 + Icges(3,5) * t494;
t301 = Icges(3,1) * t374 + Icges(3,4) * t415 - Icges(3,5) * t492;
t298 = Icges(3,5) * t376 - Icges(3,6) * t375 + Icges(3,3) * t494;
t297 = Icges(3,5) * t374 + Icges(3,6) * t415 - Icges(3,3) * t492;
t276 = t306 + t468;
t275 = -t305 + t443;
t264 = -t400 * t305 - t358 * t492;
t263 = t306 * t400 - t358 * t494;
t259 = Icges(4,1) * t345 + Icges(4,4) * t344 + Icges(4,5) * t375;
t258 = Icges(4,1) * t343 + Icges(4,4) * t342 - Icges(4,5) * t415;
t257 = Icges(4,4) * t345 + Icges(4,2) * t344 + Icges(4,6) * t375;
t256 = Icges(4,4) * t343 + Icges(4,2) * t342 - Icges(4,6) * t415;
t252 = rSges(3,3) * t447 - t431;
t247 = Icges(3,1) * t321 - Icges(3,4) * t320 + Icges(3,5) * t447;
t246 = Icges(3,1) * t319 + Icges(3,4) * t318 + Icges(3,5) * t446;
t243 = Icges(3,5) * t321 - Icges(3,6) * t320 + Icges(3,3) * t447;
t242 = Icges(3,5) * t319 + Icges(3,6) * t318 + Icges(3,3) * t446;
t236 = -rSges(5,3) * t415 - t429;
t208 = (-t396 + (-rSges(3,3) - pkin(7)) * t494) * qJD(1) + t431;
t207 = t433 + t251;
t204 = t353 * t494 - t354 * t375 + t355 * t376;
t203 = -t353 * t492 + t354 * t415 + t374 * t355;
t199 = t468 - t475;
t198 = t443 + t476;
t195 = t400 * t251 + (-t358 * t466 - t363 * t404) * t398;
t194 = -t400 * t252 + (t358 * t467 - t363 * t407) * t398;
t191 = Icges(4,1) * t288 + Icges(4,4) * t287 + Icges(4,5) * t320;
t190 = Icges(4,1) * t286 + Icges(4,4) * t285 - Icges(4,5) * t318;
t189 = Icges(4,4) * t288 + Icges(4,2) * t287 + Icges(4,6) * t320;
t188 = Icges(4,4) * t286 + Icges(4,2) * t285 - Icges(4,6) * t318;
t185 = t298 * t400 + (t300 * t406 + t302 * t403) * t398;
t184 = t297 * t400 + (t299 * t406 + t301 * t403) * t398;
t183 = t424 + t237;
t182 = -t415 * t503 + t414 + t429;
t173 = -t237 * t493 - t283 * t375;
t172 = t236 * t493 - t283 * t415;
t171 = t298 * t494 - t300 * t375 + t302 * t376;
t170 = t297 * t494 - t299 * t375 + t301 * t376;
t169 = -t298 * t492 + t300 * t415 + t374 * t302;
t168 = -t297 * t492 + t299 * t415 + t374 * t301;
t152 = t398 * t441 + t400 * t476;
t151 = t261 * t400 + t473 * t494 + t311;
t150 = -t277 * t493 - t278 * t356 + t279 * t357;
t149 = t236 * t375 + t237 * t415;
t148 = t291 * t375 + t292 * t344 + t293 * t345;
t147 = -t291 * t415 + t292 * t342 + t293 * t343;
t142 = t150 * t445;
t141 = t320 * rSges(5,3) - t430;
t132 = -t320 * t354 + t321 * t355 + t415 * t361 + t374 * t362 + (t353 * t467 - t360 * t407) * t398;
t131 = t318 * t354 + t319 * t355 - t375 * t361 + t376 * t362 + (t353 * t466 + t360 * t404) * t398;
t126 = -qJD(1) * t468 + t481;
t125 = t413 - t440 + t192;
t124 = (t260 * t404 + t261 * t407) * t398 + t470;
t123 = -t255 * t493 + t257 * t371 + t259 * t372;
t122 = -t254 * t493 + t256 * t371 + t258 * t372;
t121 = t424 + t482;
t120 = -t410 * t509 + t414 + t427 - t497 - t508;
t119 = t181 * t356 + t216 * t411;
t118 = -t180 * t356 - t216 * t410;
t114 = t255 * t375 + t257 * t344 + t259 * t345;
t113 = t254 * t375 + t256 * t344 + t258 * t345;
t112 = -t255 * t415 + t257 * t342 + t259 * t343;
t111 = -t254 * t415 + t256 * t342 + t258 * t343;
t110 = t320 * t503 + t408 + t430;
t109 = t409 + t140;
t108 = t231 * t375 + t233 * t411 + t235 * t338;
t107 = t230 * t375 + t232 * t411 + t234 * t338;
t106 = -t231 * t415 + t233 * t410 + t235 * t336;
t105 = -t230 * t415 + t232 * t410 + t234 * t336;
t104 = (-t236 + t478) * t400 + t398 * t432;
t103 = t237 * t400 + t450 * t494 + t479;
t102 = -t180 * t411 + t181 * t410;
t100 = t242 * t400 + (t244 * t406 + t246 * t403 + (-t300 * t403 + t302 * t406) * qJD(2)) * t398;
t99 = t243 * t400 + (t245 * t406 + t247 * t403 + (-t299 * t403 + t301 * t406) * qJD(2)) * t398;
t98 = t101 * t445;
t97 = t400 * t192 + t209 + (qJD(1) * t441 + t404 * t469) * t398;
t96 = t350 + t481 * t400 + (t294 * t467 + t407 * t469) * t398;
t95 = -t375 * t480 - t482 * t493;
t94 = -t415 * t480 + t483 * t493;
t90 = t287 * t292 + t288 * t293 + t291 * t320 - t330 * t415 + t331 * t342 + t332 * t343;
t89 = t285 * t292 + t286 * t293 - t291 * t318 + t330 * t375 + t331 * t344 + t332 * t345;
t88 = (t236 * t404 + t237 * t407) * t398 + t437;
t79 = t375 * t483 + t415 * t482;
t78 = -t253 * t415 + t283 * t320 + (t141 * t406 - t236 * t464) * t398;
t77 = -t253 * t375 + t283 * t318 + (-t140 * t406 + t237 * t464) * t398;
t73 = t74 * t400;
t72 = (t478 - t483) * t400 + t398 * t423;
t71 = t400 * t482 + t438 * t494 + t479;
t70 = -t175 * t411 + t177 * t272 + t179 * t273;
t69 = -t174 * t411 + t176 * t272 + t178 * t273;
t64 = t140 * t415 + t141 * t375 - t236 * t318 - t237 * t320;
t63 = (t404 * t483 + t407 * t482) * t398 + t437;
t62 = t188 * t371 + t190 * t372 + (-t186 * t406 + (t255 * t403 + (-t257 * t397 + t259 * t399) * t406) * qJD(2)) * t398;
t61 = t189 * t371 + t191 * t372 + (-t187 * t406 + (t254 * t403 + (-t256 * t397 + t258 * t399) * t406) * qJD(2)) * t398;
t60 = (t192 * t407 + t193 * t404 + (t260 * t407 + t404 * t475) * qJD(1)) * t398 + t452;
t59 = t226 * t509 + t408 + t428 + t498 - t507;
t58 = t409 + t502;
t57 = t400 * t140 + (qJD(1) * t432 + t404 * t451) * t398 + t485;
t56 = (-t141 + t484) * t400 + (t283 * t467 + t407 * t451) * t398 + t474;
t55 = t130 * t400 + (-t107 * t407 + t108 * t404) * t398;
t54 = t129 * t400 + (-t105 * t407 + t106 * t404) * t398;
t53 = -t107 * t415 + t108 * t375 - t130 * t493;
t52 = -t105 * t415 + t106 * t375 - t129 * t493;
t49 = -t146 * t410 - t180 * t322 + t216 * t226 - t356 * t87;
t48 = t146 * t411 + t181 * t322 - t216 * t224 + t356 * t86;
t46 = t47 * t400;
t45 = -t134 * t415 + t136 * t410 + t138 * t336 - t226 * t233 + t227 * t235 + t231 * t320;
t44 = -t135 * t415 + t137 * t410 + t139 * t336 - t226 * t232 + t227 * t234 + t230 * t320;
t43 = t134 * t375 + t136 * t411 + t138 * t338 - t224 * t233 + t225 * t235 - t231 * t318;
t42 = t135 * t375 + t137 * t411 + t139 * t338 - t224 * t232 + t225 * t234 - t230 * t318;
t40 = -t486 * t415 + t480 * t320 + (t406 * t501 - t464 * t483) * t398;
t39 = -t486 * t375 + t480 * t318 + (-t406 * t502 + t464 * t482) * t398;
t38 = (t140 * t407 + t141 * t404 + (t236 * t407 + (-t237 + t477) * t404) * qJD(1)) * t398 + t418;
t37 = t101 * t400 + (t404 * t76 - t407 * t75) * t398;
t36 = -t101 * t493 + t375 * t76 - t415 * t75;
t35 = t180 * t224 - t181 * t226 + t410 * t86 - t411 * t87;
t32 = t101 * t356 - t410 * t75 - t411 * t76;
t31 = t502 * t400 + (qJD(1) * t423 + t404 * t439) * t398 + t485;
t30 = (t484 - t501) * t400 + (t407 * t439 + t467 * t480) * t398 + t474;
t29 = t92 * t400 + (t404 * t70 - t407 * t69) * t398;
t28 = t91 * t400 + (t404 * t68 - t407 * t67) * t398;
t27 = t375 * t70 - t415 * t69 - t493 * t92;
t26 = t375 * t68 - t415 * t67 - t493 * t91;
t25 = t356 * t92 - t410 * t69 - t411 * t70;
t24 = t356 * t91 - t410 * t67 - t411 * t68;
t23 = -t318 * t483 - t320 * t482 + t375 * t501 + t415 * t502;
t18 = t155 * t177 + t156 * t179 + t175 * t224 + t272 * t82 + t273 * t84 - t411 * t80;
t17 = t155 * t176 + t156 * t178 + t174 * t224 + t272 * t83 + t273 * t85 - t411 * t81;
t16 = (t502 * t407 + t501 * t404 + (t483 * t407 + (t477 - t482) * t404) * qJD(1)) * t398 + t418;
t15 = t73 + (t51 * t404 - t50 * t407 + (t115 * t404 + t116 * t407) * qJD(1)) * t398;
t14 = t115 * t320 - t116 * t318 + t51 * t375 - t415 * t50 - t493 * t74 + t142;
t13 = t66 * t400 + (t404 * t45 - t407 * t44 + (t105 * t404 + t106 * t407) * qJD(1)) * t398;
t12 = t65 * t400 + (t404 * t43 - t407 * t42 + (t107 * t404 + t108 * t407) * qJD(1)) * t398;
t11 = t105 * t320 - t106 * t318 - t415 * t44 + t375 * t45 + (t129 * t464 - t406 * t66) * t398;
t10 = t107 * t320 - t108 * t318 - t415 * t42 + t375 * t43 + (t130 * t464 - t406 * t65) * t398;
t9 = t46 + (-t21 * t407 + t22 * t404 + (t75 * t404 + t76 * t407) * qJD(1)) * t398;
t8 = -t21 * t415 + t22 * t375 - t76 * t318 + t75 * t320 - t47 * t493 + t98;
t7 = -t21 * t410 - t22 * t411 + t76 * t224 + t75 * t226 + t505;
t6 = t34 * t400 + (-t19 * t407 + t20 * t404 + (t404 * t67 + t407 * t68) * qJD(1)) * t398;
t5 = t33 * t400 + (-t17 * t407 + t18 * t404 + (t404 * t69 + t407 * t70) * qJD(1)) * t398;
t4 = -t19 * t415 + t20 * t375 - t318 * t68 + t320 * t67 + (-t34 * t406 + t464 * t91) * t398;
t3 = -t17 * t415 + t18 * t375 - t318 * t70 + t320 * t69 + (-t33 * t406 + t464 * t92) * t398;
t1 = -t17 * t410 - t18 * t411 + t224 * t70 + t226 * t69 + t322 * t92 + t33 * t356;
t41 = [-t330 * t493 - t444 * t528 + (t207 * t276 + t208 * t275) * t522 + (t125 * t199 + t126 * t198) * t521 + (t109 * t183 + t110 * t182) * t520 + (t120 * t59 + t121 * t58) * t519 - t504 + t530; t73 + t46 + m(3) * (t194 * t275 + t195 * t276 + t207 * t263 + t208 * t264) + m(4) * (t125 * t151 + t126 * t152 + t198 * t96 + t199 * t97) + m(5) * (t103 * t109 + t104 * t110 + t182 * t56 + t183 * t57) + m(6) * (t120 * t30 + t121 * t31 + t58 * t71 + t59 * t72) + ((-t132 / 0.2e1 - t61 / 0.2e1 - t90 / 0.2e1 - t99 / 0.2e1 - t422) * t407 + (t100 / 0.2e1 + t131 / 0.2e1 + t62 / 0.2e1 + t89 / 0.2e1 + t421) * t404 + ((t123 / 0.2e1 + t148 / 0.2e1 + t185 / 0.2e1 + t204 / 0.2e1 - t419) * t407 + (t122 / 0.2e1 + t147 / 0.2e1 + t184 / 0.2e1 + t203 / 0.2e1 + t420) * t404) * qJD(1)) * t398 + t527; (t16 * t63 + t30 * t72 + t31 * t71) * t519 + (t103 * t57 + t104 * t56 + t38 * t88) * t520 + (t124 * t60 + t151 * t97 + t152 * t96) * t521 + (t264 * t194 + t263 * t195 + (t305 * t404 + t306 * t407) * (t251 * t407 + t252 * t404 + (t305 * t407 - t306 * t404) * qJD(1)) * t518) * t522 + (t5 + t12) * t494 + (-t6 - t13) * t492 + (t28 + t54) * t447 + (t29 + t55) * t446 + ((t170 * t467 + t171 * t466 + (t113 * qJD(1) + t188 * t344 + t190 * t345 + t376 * t246 + t257 * t285 + t259 * t286 + t319 * t302 + (t242 * t404 + t298 * t466) * t398 - t526 * t375 + t524 * t318) * t404 + (-t376 * t247 - t319 * t301 - t189 * t344 - t191 * t345 - t256 * t285 - t258 * t286 + t114 * qJD(1) + (-t243 * t404 - t297 * t466) * t398 + t525 * t375 + t523 * t318) * t407) * t494 + (-t168 * t467 - t169 * t466 + (-t112 * qJD(1) + t189 * t342 + t191 * t343 + t374 * t247 + t256 * t287 + t258 * t288 + t321 * t301 + (-t243 * t407 + t297 * t467) * t398 + t525 * t415 + t523 * t320) * t407 + (-t374 * t246 - t321 * t302 - t188 * t342 - t190 * t343 - t257 * t287 - t259 * t288 - t111 * qJD(1) + (t242 * t407 - t298 * t467) * t398 - t526 * t415 + t524 * t320) * t404) * t492 + ((-t111 - t168) * t407 + (t112 + t169) * t404) * t447 + ((-t113 - t170) * t407 + (t114 + t171) * t404) * t446) * t398 + (t15 + t9 + (t131 + t89) * t494 + (-t132 - t90) * t492 + (t203 + t147) * t447 + (t204 + t148) * t446 + ((-t61 - t99) * t407 + (t100 + t62) * t404 + ((t123 + t185) * t407 + (t122 + t184) * t404) * qJD(1)) * t398 + t527) * t400; m(6) * (-t120 * t318 + t121 * t320 + t375 * t59 - t415 * t58) + m(5) * (-t109 * t415 + t110 * t375 - t182 * t318 + t183 * t320) + m(4) * (-t125 * t415 + t126 * t375 - t198 * t318 + t199 * t320); m(6) * (t30 * t375 - t31 * t415 - t318 * t72 + t320 * t71 + (-t16 * t406 + t464 * t63) * t398) + m(5) * (t103 * t320 - t104 * t318 - t415 * t57 + t375 * t56 + (-t38 * t406 + t464 * t88) * t398) + m(4) * (t151 * t320 - t152 * t318 - t415 * t97 + t375 * t96 + (t124 * t464 - t406 * t60) * t398); 0.4e1 * (m(4) / 0.2e1 + m(5) / 0.2e1 + m(6) / 0.2e1) * (-t403 * t463 * t518 - t318 * t375 - t320 * t415); t142 + t98 + t504 * t493 + m(6) * (t120 * t40 + t121 * t39 + t58 * t95 + t59 * t94) + m(5) * (t109 * t173 + t110 * t172 + t182 * t78 + t183 * t77) + t421 * t375 - t422 * t415 + t420 * t320 + t419 * t318; (t8 / 0.2e1 + t14 / 0.2e1) * t400 + (t5 / 0.2e1 + t12 / 0.2e1) * t375 - (t6 / 0.2e1 + t13 / 0.2e1) * t415 + (t28 / 0.2e1 + t54 / 0.2e1) * t320 + (-t29 / 0.2e1 - t55 / 0.2e1) * t318 + m(6) * (t16 * t79 + t23 * t63 + t30 * t94 + t31 * t95 + t39 * t71 + t40 * t72) + m(5) * (t103 * t77 + t104 * t78 + t149 * t38 + t172 * t56 + t173 * t57 + t64 * t88) + ((-t4 / 0.2e1 - t11 / 0.2e1) * t407 + (-t9 / 0.2e1 - t15 / 0.2e1) * t406 + (t3 / 0.2e1 + t10 / 0.2e1) * t404 + (t37 / 0.2e1 + t150 * t511 + (-t115 * t407 + t116 * t404) * t398 / 0.2e1) * t464 + ((t27 / 0.2e1 + t53 / 0.2e1) * t407 + (t26 / 0.2e1 + t52 / 0.2e1) * t404) * qJD(1)) * t398; m(5) * (-t172 * t318 + t173 * t320 - t415 * t77 + t375 * t78 + (t149 * t464 - t406 * t64) * t398) + m(6) * (-t318 * t94 + t320 * t95 - t415 * t39 + t375 * t40 + (-t23 * t406 + t464 * t79) * t398); (-t14 - t8) * t493 + (t10 + t3) * t375 - (t11 + t4) * t415 + (t26 + t52) * t320 + (-t27 - t53) * t318 + (-t115 * t415 + t116 * t375 - t150 * t493 + t36) * t445 + (t23 * t79 + t39 * t95 + t40 * t94) * t519 + (t149 * t64 + t172 * t78 + t173 * t77) * t520; m(6) * (t118 * t59 + t119 * t58 + t120 * t49 + t121 * t48) - t459 * t411 - t460 * t410 + t458 * t226 + t457 * t224 + t505; t37 * t515 + t9 * t512 + m(6) * (t102 * t16 + t118 * t30 + t119 * t31 + t35 * t63 + t48 * t71 + t49 * t72) + t29 * t517 + t5 * t513 + t7 * t511 + t28 * t516 + t6 * t514 + (t1 * t510 + t407 * t529 + (t407 * t25 / 0.2e1 + t24 * t510) * qJD(1)) * t398; m(6) * (-t118 * t318 + t119 * t320 - t415 * t48 + t375 * t49 + (t102 * t464 - t35 * t406) * t398); m(6) * (t102 * t23 + t118 * t40 + t119 * t39 + t35 * t79 + t48 * t95 + t49 * t94) + t36 * t515 + t8 * t512 + t26 * t516 + t4 * t514 + t27 * t517 + t3 * t513 - t318 * t25 / 0.2e1 + t375 * t1 / 0.2e1 + t320 * t24 / 0.2e1 + t415 * t529 + (t32 * t464 / 0.2e1 - t406 * t7 / 0.2e1) * t398; (t102 * t35 + t118 * t49 + t119 * t48) * t519 + t224 * t25 - t411 * t1 + t226 * t24 - t410 * t2 + t322 * t32 + t356 * t7;];
%% Postprocessing: Reshape Output
% From vec2symmat_5_matlab.m
res = [t41(1), t41(2), t41(4), t41(7), t41(11); t41(2), t41(3), t41(5), t41(8), t41(12); t41(4), t41(5), t41(6), t41(9), t41(13); t41(7), t41(8), t41(9), t41(10), t41(14); t41(11), t41(12), t41(13), t41(14), t41(15);];
Mq = res;