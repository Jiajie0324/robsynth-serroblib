% Calculate time derivative of joint inertia matrix for
% S6PRRPPR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d6,theta1,theta4]';
% m_mdh [7x1]
%   mass of all robot links (including the base)
% rSges [7x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% Icges [7x6]
%   inertia of all robot links about their respective center of mass, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertiavector2matrix.m)
% 
% Output:
% MqD [6x6]
%   time derivative of inertia matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 21:07
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6PRRPPR2_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPPR2_inertiaDJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPPR2_inertiaDJ_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRPPR2_inertiaDJ_slag_vp1: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PRRPPR2_inertiaDJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6PRRPPR2_inertiaDJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6PRRPPR2_inertiaDJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 21:04:10
% EndTime: 2019-03-08 21:04:45
% DurationCPUTime: 25.20s
% Computational Cost: add. (59882->1160), mult. (115701->1607), div. (0->0), fcn. (128472->12), ass. (0->456)
t399 = sin(pkin(10));
t401 = cos(pkin(10));
t409 = cos(qJ(2));
t402 = cos(pkin(6));
t406 = sin(qJ(2));
t490 = t402 * t406;
t384 = t399 * t409 + t401 * t490;
t400 = sin(pkin(6));
t458 = qJ(3) + pkin(11);
t442 = cos(t458);
t427 = t400 * t442;
t441 = sin(t458);
t354 = t384 * t441 + t401 * t427;
t426 = t400 * t441;
t355 = t384 * t442 - t401 * t426;
t488 = t402 * t409;
t414 = -t399 * t406 + t401 * t488;
t242 = -Icges(6,5) * t414 - Icges(6,6) * t355 + Icges(6,3) * t354;
t248 = Icges(5,4) * t355 - Icges(5,2) * t354 - Icges(5,6) * t414;
t530 = t242 - t248;
t455 = t399 * t490;
t386 = t401 * t409 - t455;
t356 = t386 * t441 - t399 * t427;
t357 = t386 * t442 + t399 * t426;
t385 = t399 * t488 + t401 * t406;
t243 = Icges(6,5) * t385 - Icges(6,6) * t357 + Icges(6,3) * t356;
t249 = Icges(5,4) * t357 - Icges(5,2) * t356 + Icges(5,6) * t385;
t529 = t243 - t249;
t246 = -Icges(6,4) * t414 - Icges(6,2) * t355 + Icges(6,6) * t354;
t252 = Icges(5,1) * t355 - Icges(5,4) * t354 - Icges(5,5) * t414;
t528 = -t246 + t252;
t247 = Icges(6,4) * t385 - Icges(6,2) * t357 + Icges(6,6) * t356;
t253 = Icges(5,1) * t357 - Icges(5,4) * t356 + Icges(5,5) * t385;
t527 = -t247 + t253;
t244 = Icges(5,5) * t355 - Icges(5,6) * t354 - Icges(5,3) * t414;
t250 = -Icges(6,1) * t414 - Icges(6,4) * t355 + Icges(6,5) * t354;
t405 = sin(qJ(3));
t408 = cos(qJ(3));
t493 = t400 * t408;
t361 = -t384 * t405 - t401 * t493;
t494 = t400 * t405;
t454 = t401 * t494;
t415 = -t384 * t408 + t454;
t275 = -Icges(4,5) * t415 + Icges(4,6) * t361 - Icges(4,3) * t414;
t526 = t244 + t250 + t275;
t245 = Icges(5,5) * t357 - Icges(5,6) * t356 + Icges(5,3) * t385;
t251 = Icges(6,1) * t385 - Icges(6,4) * t357 + Icges(6,5) * t356;
t363 = -t386 * t405 + t399 * t493;
t456 = t399 * t494;
t364 = t386 * t408 + t456;
t276 = Icges(4,5) * t364 + Icges(4,6) * t363 + Icges(4,3) * t385;
t525 = t245 + t251 + t276;
t277 = -Icges(4,4) * t415 + Icges(4,2) * t361 - Icges(4,6) * t414;
t279 = -Icges(4,1) * t415 + Icges(4,4) * t361 - Icges(4,5) * t414;
t521 = t277 * t361 - t279 * t415 + t354 * t530 + t528 * t355 - t526 * t414;
t278 = Icges(4,4) * t364 + Icges(4,2) * t363 + Icges(4,6) * t385;
t280 = Icges(4,1) * t364 + Icges(4,4) * t363 + Icges(4,5) * t385;
t520 = t278 * t361 - t280 * t415 + t354 * t529 + t355 * t527 - t414 * t525;
t519 = t277 * t363 + t279 * t364 + t356 * t530 + t528 * t357 + t526 * t385;
t518 = t278 * t363 + t280 * t364 + t356 * t529 + t357 * t527 + t385 * t525;
t371 = -t402 * t442 + t406 * t426;
t372 = t402 * t441 + t406 * t427;
t492 = t400 * t409;
t313 = -Icges(6,5) * t492 - Icges(6,6) * t372 + Icges(6,3) * t371;
t314 = -Icges(6,4) * t492 - Icges(6,2) * t372 + Icges(6,6) * t371;
t315 = -Icges(6,1) * t492 - Icges(6,4) * t372 + Icges(6,5) * t371;
t159 = t313 * t354 - t314 * t355 - t315 * t414;
t316 = Icges(5,5) * t372 - Icges(5,6) * t371 - Icges(5,3) * t492;
t317 = Icges(5,4) * t372 - Icges(5,2) * t371 - Icges(5,6) * t492;
t318 = Icges(5,1) * t372 - Icges(5,4) * t371 - Icges(5,5) * t492;
t161 = -t316 * t414 - t317 * t354 + t318 * t355;
t487 = t405 * t406;
t489 = t402 * t408;
t387 = -t400 * t487 + t489;
t491 = t402 * t405;
t388 = t406 * t493 + t491;
t332 = Icges(4,5) * t388 + Icges(4,6) * t387 - Icges(4,3) * t492;
t333 = Icges(4,4) * t388 + Icges(4,2) * t387 - Icges(4,6) * t492;
t334 = Icges(4,1) * t388 + Icges(4,4) * t387 - Icges(4,5) * t492;
t167 = -t332 * t414 + t333 * t361 - t334 * t415;
t524 = t159 + t161 + t167;
t160 = t313 * t356 - t314 * t357 + t315 * t385;
t162 = t316 * t385 - t317 * t356 + t318 * t357;
t168 = t332 * t385 + t333 * t363 + t334 * t364;
t523 = t160 + t162 + t168;
t457 = m(6) / 0.2e1 + m(7) / 0.2e1;
t522 = 0.2e1 * t457;
t496 = t399 * t400;
t495 = t400 * t401;
t459 = qJD(2) * t409;
t443 = t400 * t459;
t365 = -qJD(3) * t388 - t405 * t443;
t366 = qJD(3) * t387 + t408 * t443;
t460 = qJD(2) * t406;
t444 = t400 * t460;
t290 = Icges(4,5) * t366 + Icges(4,6) * t365 + Icges(4,3) * t444;
t291 = Icges(4,4) * t366 + Icges(4,2) * t365 + Icges(4,6) * t444;
t292 = Icges(4,1) * t366 + Icges(4,4) * t365 + Icges(4,5) * t444;
t374 = t414 * qJD(2);
t307 = qJD(3) * t415 - t374 * t405;
t411 = t361 * qJD(3);
t308 = t374 * t408 + t411;
t375 = t384 * qJD(2);
t101 = -t290 * t414 + t291 * t361 - t292 * t415 + t307 * t333 + t308 * t334 + t332 * t375;
t404 = sin(qJ(6));
t407 = cos(qJ(6));
t358 = t371 * t407 + t404 * t492;
t416 = -t371 * t404 + t407 * t492;
t236 = -Icges(7,5) * t416 + Icges(7,6) * t358 + Icges(7,3) * t372;
t237 = -Icges(7,4) * t416 + Icges(7,2) * t358 + Icges(7,6) * t372;
t238 = -Icges(7,1) * t416 + Icges(7,4) * t358 + Icges(7,5) * t372;
t303 = t354 * t407 + t404 * t414;
t304 = t354 * t404 - t407 * t414;
t114 = t236 * t355 + t237 * t303 + t238 * t304;
t424 = qJD(3) * t441;
t417 = t400 * t424;
t425 = qJD(3) * t442;
t298 = t374 * t441 + t384 * t425 - t401 * t417;
t212 = -qJD(6) * t304 + t298 * t407 - t375 * t404;
t213 = qJD(6) * t303 + t298 * t404 + t375 * t407;
t418 = t400 * t425;
t299 = t374 * t442 - t384 * t424 - t401 * t418;
t122 = Icges(7,5) * t213 + Icges(7,6) * t212 + Icges(7,3) * t299;
t124 = Icges(7,4) * t213 + Icges(7,2) * t212 + Icges(7,6) * t299;
t126 = Icges(7,1) * t213 + Icges(7,4) * t212 + Icges(7,5) * t299;
t183 = Icges(7,5) * t304 + Icges(7,6) * t303 + Icges(7,3) * t355;
t185 = Icges(7,4) * t304 + Icges(7,2) * t303 + Icges(7,6) * t355;
t187 = Icges(7,1) * t304 + Icges(7,4) * t303 + Icges(7,5) * t355;
t28 = t122 * t355 + t124 * t303 + t126 * t304 + t183 * t299 + t185 * t212 + t187 * t213;
t376 = t385 * qJD(2);
t300 = qJD(3) * t357 - t376 * t441;
t306 = t356 * t404 + t385 * t407;
t377 = -qJD(2) * t455 + t401 * t459;
t214 = -qJD(6) * t306 + t300 * t407 - t377 * t404;
t305 = t356 * t407 - t385 * t404;
t215 = qJD(6) * t305 + t300 * t404 + t377 * t407;
t301 = -t376 * t442 - t386 * t424 + t399 * t418;
t123 = Icges(7,5) * t215 + Icges(7,6) * t214 + Icges(7,3) * t301;
t125 = Icges(7,4) * t215 + Icges(7,2) * t214 + Icges(7,6) * t301;
t127 = Icges(7,1) * t215 + Icges(7,4) * t214 + Icges(7,5) * t301;
t184 = Icges(7,5) * t306 + Icges(7,6) * t305 + Icges(7,3) * t357;
t186 = Icges(7,4) * t306 + Icges(7,2) * t305 + Icges(7,6) * t357;
t188 = Icges(7,1) * t306 + Icges(7,4) * t305 + Icges(7,5) * t357;
t29 = t123 * t355 + t125 * t303 + t127 * t304 + t184 * t299 + t186 * t212 + t188 * t213;
t352 = qJD(3) * t372 + t426 * t459;
t262 = qJD(6) * t416 + t352 * t407 - t404 * t444;
t263 = qJD(6) * t358 + t352 * t404 + t407 * t444;
t353 = t402 * t425 - t406 * t417 + t427 * t459;
t163 = Icges(7,5) * t263 + Icges(7,6) * t262 + Icges(7,3) * t353;
t164 = Icges(7,4) * t263 + Icges(7,2) * t262 + Icges(7,6) * t353;
t165 = Icges(7,1) * t263 + Icges(7,4) * t262 + Icges(7,5) * t353;
t48 = t163 * t355 + t164 * t303 + t165 * t304 + t212 * t237 + t213 * t238 + t236 * t299;
t94 = t183 * t355 + t185 * t303 + t187 * t304;
t95 = t184 * t355 + t186 * t303 + t188 * t304;
t3 = -t28 * t414 + t29 * t385 + t94 * t375 + t95 * t377 + (t114 * t460 - t409 * t48) * t400;
t193 = Icges(5,5) * t299 - Icges(5,6) * t298 + Icges(5,3) * t375;
t197 = Icges(5,4) * t299 - Icges(5,2) * t298 + Icges(5,6) * t375;
t201 = Icges(5,1) * t299 - Icges(5,4) * t298 + Icges(5,5) * t375;
t60 = -t193 * t414 - t197 * t354 + t201 * t355 + t244 * t375 - t248 * t298 + t252 * t299;
t194 = Icges(5,5) * t301 - Icges(5,6) * t300 + Icges(5,3) * t377;
t198 = Icges(5,4) * t301 - Icges(5,2) * t300 + Icges(5,6) * t377;
t202 = Icges(5,1) * t301 - Icges(5,4) * t300 + Icges(5,5) * t377;
t61 = -t194 * t414 - t198 * t354 + t202 * t355 + t245 * t375 - t249 * t298 + t253 * t299;
t191 = Icges(6,5) * t375 - Icges(6,6) * t299 + Icges(6,3) * t298;
t195 = Icges(6,4) * t375 - Icges(6,2) * t299 + Icges(6,6) * t298;
t199 = Icges(6,1) * t375 - Icges(6,4) * t299 + Icges(6,5) * t298;
t64 = t191 * t354 - t195 * t355 - t199 * t414 + t242 * t298 - t246 * t299 + t250 * t375;
t192 = Icges(6,5) * t377 - Icges(6,6) * t301 + Icges(6,3) * t300;
t196 = Icges(6,4) * t377 - Icges(6,2) * t301 + Icges(6,6) * t300;
t200 = Icges(6,1) * t377 - Icges(6,4) * t301 + Icges(6,5) * t300;
t65 = t192 * t354 - t196 * t355 - t200 * t414 + t243 * t298 - t247 * t299 + t251 * t375;
t219 = Icges(4,5) * t308 + Icges(4,6) * t307 + Icges(4,3) * t375;
t221 = Icges(4,4) * t308 + Icges(4,2) * t307 + Icges(4,6) * t375;
t223 = Icges(4,1) * t308 + Icges(4,4) * t307 + Icges(4,5) * t375;
t70 = -t219 * t414 + t221 * t361 - t223 * t415 + t275 * t375 + t277 * t307 + t279 * t308;
t309 = -qJD(3) * t364 + t376 * t405;
t410 = t363 * qJD(3);
t310 = -t376 * t408 + t410;
t220 = Icges(4,5) * t310 + Icges(4,6) * t309 + Icges(4,3) * t377;
t222 = Icges(4,4) * t310 + Icges(4,2) * t309 + Icges(4,6) * t377;
t224 = Icges(4,1) * t310 + Icges(4,4) * t309 + Icges(4,5) * t377;
t71 = -t220 * t414 + t222 * t361 - t224 * t415 + t276 * t375 + t278 * t307 + t280 * t308;
t267 = Icges(5,5) * t353 - Icges(5,6) * t352 + Icges(5,3) * t444;
t268 = Icges(5,4) * t353 - Icges(5,2) * t352 + Icges(5,6) * t444;
t269 = Icges(5,1) * t353 - Icges(5,4) * t352 + Icges(5,5) * t444;
t89 = -t267 * t414 - t268 * t354 + t269 * t355 - t298 * t317 + t299 * t318 + t316 * t375;
t264 = Icges(6,5) * t444 - Icges(6,6) * t353 + Icges(6,3) * t352;
t265 = Icges(6,4) * t444 - Icges(6,2) * t353 + Icges(6,6) * t352;
t266 = Icges(6,1) * t444 - Icges(6,4) * t353 + Icges(6,5) * t352;
t91 = t264 * t354 - t265 * t355 - t266 * t414 + t298 * t313 - t299 * t314 + t315 * t375;
t517 = t3 + (-t60 - t64 - t70) * t414 + (t524 * t460 + (-t101 - t89 - t91) * t409) * t400 + (t61 + t65 + t71) * t385 + t520 * t377 + t521 * t375;
t102 = t290 * t385 + t291 * t363 + t292 * t364 + t309 * t333 + t310 * t334 + t332 * t377;
t115 = t236 * t357 + t237 * t305 + t238 * t306;
t30 = t122 * t357 + t124 * t305 + t126 * t306 + t183 * t301 + t185 * t214 + t187 * t215;
t31 = t123 * t357 + t125 * t305 + t127 * t306 + t184 * t301 + t186 * t214 + t188 * t215;
t49 = t163 * t357 + t164 * t305 + t165 * t306 + t214 * t237 + t215 * t238 + t236 * t301;
t96 = t183 * t357 + t185 * t305 + t187 * t306;
t97 = t184 * t357 + t186 * t305 + t188 * t306;
t4 = -t30 * t414 + t31 * t385 + t96 * t375 + t97 * t377 + (t115 * t460 - t409 * t49) * t400;
t62 = t193 * t385 - t197 * t356 + t201 * t357 + t244 * t377 - t248 * t300 + t252 * t301;
t63 = t194 * t385 - t198 * t356 + t202 * t357 + t245 * t377 - t249 * t300 + t253 * t301;
t66 = t191 * t356 - t195 * t357 + t199 * t385 + t242 * t300 - t246 * t301 + t250 * t377;
t67 = t192 * t356 - t196 * t357 + t200 * t385 + t243 * t300 - t247 * t301 + t251 * t377;
t72 = t219 * t385 + t221 * t363 + t223 * t364 + t275 * t377 + t277 * t309 + t279 * t310;
t73 = t220 * t385 + t222 * t363 + t224 * t364 + t276 * t377 + t278 * t309 + t280 * t310;
t90 = t267 * t385 - t268 * t356 + t269 * t357 - t300 * t317 + t301 * t318 + t316 * t377;
t92 = t264 * t356 - t265 * t357 + t266 * t385 + t300 * t313 - t301 * t314 + t315 * t377;
t516 = t4 + (-t62 - t66 - t72) * t414 + (t523 * t460 + (-t102 - t90 - t92) * t409) * t400 + (t63 + t67 + t73) * t385 + t518 * t377 + t519 * t375;
t515 = 2 * m(4);
t514 = 2 * m(5);
t513 = 0.2e1 * m(6);
t512 = 0.2e1 * m(7);
t511 = t299 / 0.2e1;
t510 = t301 / 0.2e1;
t509 = t353 / 0.2e1;
t508 = t355 / 0.2e1;
t507 = t357 / 0.2e1;
t506 = t372 / 0.2e1;
t505 = t375 / 0.2e1;
t504 = t377 / 0.2e1;
t503 = t399 / 0.2e1;
t502 = -t401 / 0.2e1;
t501 = pkin(3) * t408;
t499 = pkin(3) * qJD(3);
t498 = Icges(3,4) * t406;
t497 = Icges(3,4) * t409;
t128 = rSges(7,1) * t213 + rSges(7,2) * t212 + rSges(7,3) * t299;
t486 = pkin(5) * t375 + pkin(9) * t299 + t128;
t129 = rSges(7,1) * t215 + rSges(7,2) * t214 + rSges(7,3) * t301;
t485 = pkin(5) * t377 + pkin(9) * t301 + t129;
t166 = rSges(7,1) * t263 + rSges(7,2) * t262 + rSges(7,3) * t353;
t484 = pkin(5) * t444 + pkin(9) * t353 + t166;
t181 = pkin(4) * t301 + qJ(5) * t300 + qJD(5) * t356;
t218 = pkin(3) * t410 + qJ(4) * t377 + qJD(4) * t385 - t376 * t501;
t483 = -t181 - t218;
t217 = pkin(3) * t411 + qJ(4) * t375 - qJD(4) * t414 + t374 * t501;
t259 = -pkin(3) * t454 - qJ(4) * t414 + t384 * t501;
t482 = t385 * t217 + t377 * t259;
t189 = rSges(7,1) * t304 + rSges(7,2) * t303 + rSges(7,3) * t355;
t481 = -pkin(5) * t414 + pkin(9) * t355 + t189;
t190 = rSges(7,1) * t306 + rSges(7,2) * t305 + rSges(7,3) * t357;
t480 = pkin(5) * t385 + pkin(9) * t357 + t190;
t208 = rSges(5,1) * t301 - rSges(5,2) * t300 + rSges(5,3) * t377;
t479 = -t208 - t218;
t348 = -pkin(2) * t376 + pkin(8) * t377;
t324 = t402 * t348;
t478 = t402 * t218 + t324;
t347 = pkin(2) * t374 + pkin(8) * t375;
t477 = -t217 - t347;
t229 = t385 * t259;
t288 = pkin(4) * t355 + qJ(5) * t354;
t476 = t385 * t288 + t229;
t231 = pkin(4) * t353 + qJ(5) * t352 + qJD(5) * t371;
t294 = t489 * t499 + (-t487 * t499 - qJD(4) * t409 + (qJ(4) * t406 + t409 * t501) * qJD(2)) * t400;
t475 = -t231 - t294;
t260 = pkin(3) * t456 + qJ(4) * t385 + t386 * t501;
t232 = t260 * t444;
t289 = pkin(4) * t357 + qJ(5) * t356;
t474 = t289 * t444 + t232;
t335 = pkin(3) * t491 + (-qJ(4) * t409 + t406 * t501) * t400;
t473 = t259 * t492 - t335 * t414;
t239 = -rSges(7,1) * t416 + rSges(7,2) * t358 + rSges(7,3) * t372;
t472 = -pkin(5) * t492 + t372 * pkin(9) + t239;
t351 = pkin(2) * t386 + pkin(8) * t385;
t349 = t402 * t351;
t471 = t402 * t260 + t349;
t256 = rSges(5,1) * t355 - rSges(5,2) * t354 - rSges(5,3) * t414;
t470 = -t256 - t259;
t257 = rSges(5,1) * t357 - rSges(5,2) * t356 + rSges(5,3) * t385;
t469 = -t257 - t260;
t468 = -t259 - t288;
t467 = -t260 - t289;
t271 = rSges(5,1) * t353 - rSges(5,2) * t352 + rSges(5,3) * t444;
t466 = -t271 - t294;
t320 = t372 * rSges(5,1) - t371 * rSges(5,2) - rSges(5,3) * t492;
t465 = -t320 - t335;
t464 = t347 * t496 + t348 * t495;
t325 = pkin(4) * t372 + qJ(5) * t371;
t463 = -t325 - t335;
t350 = pkin(2) * t384 - pkin(8) * t414;
t462 = t350 * t496 + t351 * t495;
t461 = qJD(2) * t400;
t453 = t402 * t181 + t478;
t180 = pkin(4) * t299 + qJ(5) * t298 + qJD(5) * t354;
t452 = -t180 + t477;
t210 = rSges(6,1) * t377 - rSges(6,2) * t301 + rSges(6,3) * t300;
t451 = -t210 + t483;
t450 = t217 * t492 - t294 * t414 + t375 * t335;
t270 = rSges(6,1) * t444 - rSges(6,2) * t353 + rSges(6,3) * t352;
t449 = -t270 + t475;
t448 = t402 * t289 + t471;
t254 = -rSges(6,1) * t414 - rSges(6,2) * t355 + rSges(6,3) * t354;
t447 = -t254 + t468;
t255 = rSges(6,1) * t385 - rSges(6,2) * t357 + rSges(6,3) * t356;
t446 = -t255 + t467;
t319 = -rSges(6,1) * t492 - t372 * rSges(6,2) + t371 * rSges(6,3);
t445 = -t319 + t463;
t293 = rSges(4,1) * t366 + rSges(4,2) * t365 + rSges(4,3) * t444;
t382 = (pkin(2) * t409 + pkin(8) * t406) * t461;
t440 = t400 * (-t293 - t382);
t336 = t388 * rSges(4,1) + t387 * rSges(4,2) - rSges(4,3) * t492;
t389 = (pkin(2) * t406 - pkin(8) * t409) * t400;
t439 = (-t336 - t389) * t400;
t438 = t483 - t485;
t437 = t475 - t484;
t436 = t385 * t180 + t377 * t288 + t482;
t435 = t468 - t481;
t434 = t467 - t480;
t433 = t217 * t496 + t218 * t495 + t464;
t432 = t259 * t496 + t260 * t495 + t462;
t431 = t288 * t492 - t325 * t414 + t473;
t430 = t463 - t472;
t429 = (-t382 + t466) * t400;
t428 = (-t389 + t465) * t400;
t423 = (-t382 + t449) * t400;
t422 = (-t389 + t445) * t400;
t421 = t180 * t496 + t181 * t495 + t433;
t420 = t180 * t492 - t231 * t414 + t375 * t325 + t450;
t419 = t288 * t496 + t289 * t495 + t432;
t413 = (-t382 + t437) * t400;
t412 = (-t389 + t430) * t400;
t381 = (rSges(3,1) * t409 - rSges(3,2) * t406) * t461;
t380 = (Icges(3,1) * t409 - t498) * t461;
t379 = (-Icges(3,2) * t406 + t497) * t461;
t378 = (Icges(3,5) * t409 - Icges(3,6) * t406) * t461;
t373 = t402 * rSges(3,3) + (rSges(3,1) * t406 + rSges(3,2) * t409) * t400;
t370 = Icges(3,5) * t402 + (Icges(3,1) * t406 + t497) * t400;
t369 = Icges(3,6) * t402 + (Icges(3,2) * t409 + t498) * t400;
t346 = -rSges(3,1) * t376 - rSges(3,2) * t377;
t345 = rSges(3,1) * t374 - rSges(3,2) * t375;
t344 = -Icges(3,1) * t376 - Icges(3,4) * t377;
t343 = Icges(3,1) * t374 - Icges(3,4) * t375;
t342 = -Icges(3,4) * t376 - Icges(3,2) * t377;
t341 = Icges(3,4) * t374 - Icges(3,2) * t375;
t340 = -Icges(3,5) * t376 - Icges(3,6) * t377;
t339 = Icges(3,5) * t374 - Icges(3,6) * t375;
t331 = rSges(3,1) * t386 - rSges(3,2) * t385 + rSges(3,3) * t496;
t330 = rSges(3,1) * t384 + rSges(3,2) * t414 - rSges(3,3) * t495;
t329 = Icges(3,1) * t386 - Icges(3,4) * t385 + Icges(3,5) * t496;
t328 = Icges(3,1) * t384 + Icges(3,4) * t414 - Icges(3,5) * t495;
t327 = Icges(3,4) * t386 - Icges(3,2) * t385 + Icges(3,6) * t496;
t326 = Icges(3,4) * t384 + Icges(3,2) * t414 - Icges(3,6) * t495;
t282 = rSges(4,1) * t364 + rSges(4,2) * t363 + rSges(4,3) * t385;
t281 = -rSges(4,1) * t415 + rSges(4,2) * t361 - rSges(4,3) * t414;
t230 = (t345 * t399 + t346 * t401) * t400;
t226 = rSges(4,1) * t310 + rSges(4,2) * t309 + rSges(4,3) * t377;
t225 = rSges(4,1) * t308 + rSges(4,2) * t307 + rSges(4,3) * t375;
t209 = rSges(6,1) * t375 - rSges(6,2) * t299 + rSges(6,3) * t298;
t207 = rSges(5,1) * t299 - rSges(5,2) * t298 + rSges(5,3) * t375;
t204 = -t282 * t492 - t385 * t336;
t203 = t281 * t492 - t336 * t414;
t175 = -t332 * t492 + t387 * t333 + t388 * t334;
t173 = t281 * t385 + t282 * t414;
t172 = (-t281 - t350) * t402 + t401 * t439;
t171 = t282 * t402 + t399 * t439 + t349;
t170 = -t316 * t492 - t371 * t317 + t372 * t318;
t169 = t371 * t313 - t372 * t314 - t315 * t492;
t157 = (t281 * t399 + t282 * t401) * t400 + t462;
t156 = -t276 * t492 + t387 * t278 + t388 * t280;
t155 = -t275 * t492 + t387 * t277 + t388 * t279;
t154 = (-t225 - t347) * t402 + t401 * t440;
t153 = t226 * t402 + t399 * t440 + t324;
t152 = t190 * t372 - t239 * t357;
t151 = -t189 * t372 + t239 * t355;
t150 = -t245 * t492 - t371 * t249 + t372 * t253;
t149 = -t244 * t492 - t371 * t248 + t372 * t252;
t148 = t371 * t243 - t372 * t247 - t251 * t492;
t147 = t371 * t242 - t372 * t246 - t250 * t492;
t146 = t385 * t465 + t469 * t492;
t145 = t256 * t492 - t320 * t414 + t473;
t139 = (-t350 + t470) * t402 + t401 * t428;
t138 = t257 * t402 + t399 * t428 + t471;
t121 = t236 * t372 + t237 * t358 - t238 * t416;
t120 = (t225 * t399 + t226 * t401) * t400 + t464;
t119 = t189 * t357 - t190 * t355;
t118 = -t385 * t293 - t377 * t336 + (-t226 * t409 + t282 * t460) * t400;
t117 = -t414 * t293 + t375 * t336 + (t225 * t409 - t281 * t460) * t400;
t116 = t256 * t385 - t414 * t469 + t229;
t113 = t387 * t291 + t388 * t292 + t365 * t333 + t366 * t334 + (-t290 * t409 + t332 * t460) * t400;
t112 = t385 * t445 + t446 * t492;
t111 = t254 * t492 - t319 * t414 + t431;
t110 = (t256 * t399 + t257 * t401) * t400 + t432;
t109 = (-t350 + t447) * t402 + t401 * t422;
t108 = t255 * t402 + t399 * t422 + t448;
t107 = t225 * t385 + t226 * t414 + t281 * t377 - t282 * t375;
t106 = (-t207 + t477) * t402 + t401 * t429;
t105 = t208 * t402 + t399 * t429 + t478;
t104 = -t371 * t268 + t372 * t269 - t352 * t317 + t353 * t318 + (-t267 * t409 + t316 * t460) * t400;
t103 = t371 * t264 - t372 * t265 + t352 * t313 - t353 * t314 + (-t266 * t409 + t315 * t460) * t400;
t100 = t184 * t372 + t186 * t358 - t188 * t416;
t99 = t183 * t372 + t185 * t358 - t187 * t416;
t98 = t254 * t385 - t414 * t446 + t476;
t93 = (t254 * t399 + t255 * t401) * t400 + t419;
t88 = t385 * t430 + t434 * t492;
t87 = -t414 * t472 + t481 * t492 + t431;
t86 = (-t350 + t435) * t402 + t401 * t412;
t85 = t399 * t412 + t402 * t480 + t448;
t84 = (t207 * t399 + t208 * t401) * t400 + t433;
t83 = t387 * t222 + t388 * t224 + t365 * t278 + t366 * t280 + (-t220 * t409 + t276 * t460) * t400;
t82 = t387 * t221 + t388 * t223 + t365 * t277 + t366 * t279 + (-t219 * t409 + t275 * t460) * t400;
t81 = (-t209 + t452) * t402 + t401 * t423;
t80 = t210 * t402 + t399 * t423 + t453;
t79 = t232 + t466 * t385 + t465 * t377 + (t257 * t460 + t409 * t479) * t400;
t78 = -t414 * t271 + t375 * t320 + (t207 * t409 + t460 * t470) * t400 + t450;
t77 = -t371 * t198 + t372 * t202 - t352 * t249 + t353 * t253 + (-t194 * t409 + t245 * t460) * t400;
t76 = -t371 * t197 + t372 * t201 - t352 * t248 + t353 * t252 + (-t193 * t409 + t244 * t460) * t400;
t75 = t371 * t192 - t372 * t196 + t352 * t243 - t353 * t247 + (-t200 * t409 + t251 * t460) * t400;
t74 = t371 * t191 - t372 * t195 + t352 * t242 - t353 * t246 + (-t199 * t409 + t250 * t460) * t400;
t69 = t385 * t481 - t414 * t434 + t476;
t68 = (t399 * t481 + t401 * t480) * t400 + t419;
t59 = t129 * t372 - t166 * t357 + t190 * t353 - t239 * t301;
t58 = -t128 * t372 + t166 * t355 - t189 * t353 + t239 * t299;
t57 = (t209 * t399 + t210 * t401) * t400 + t421;
t56 = t207 * t385 + t256 * t377 + t375 * t469 - t414 * t479 + t482;
t55 = t163 * t372 + t164 * t358 - t165 * t416 + t236 * t353 + t237 * t262 + t238 * t263;
t54 = t128 * t357 - t129 * t355 + t189 * t301 - t190 * t299;
t53 = t449 * t385 + t445 * t377 + (t255 * t460 + t409 * t451) * t400 + t474;
t52 = -t414 * t270 + t375 * t319 + (t209 * t409 + t447 * t460) * t400 + t420;
t51 = (t452 - t486) * t402 + t401 * t413;
t50 = t399 * t413 + t402 * t485 + t453;
t47 = t121 * t402 + (t100 * t399 - t401 * t99) * t400;
t46 = t100 * t385 - t121 * t492 - t414 * t99;
t45 = t100 * t357 + t121 * t372 + t355 * t99;
t44 = t209 * t385 + t254 * t377 + t375 * t446 - t414 * t451 + t436;
t43 = (t399 * t486 + t401 * t485) * t400 + t421;
t42 = t115 * t402 + (t399 * t97 - t401 * t96) * t400;
t41 = t114 * t402 + (t399 * t95 - t401 * t94) * t400;
t40 = -t115 * t492 + t97 * t385 - t414 * t96;
t39 = -t114 * t492 + t95 * t385 - t414 * t94;
t38 = t115 * t372 + t355 * t96 + t357 * t97;
t37 = t114 * t372 + t355 * t94 + t357 * t95;
t36 = t123 * t372 + t125 * t358 - t127 * t416 + t184 * t353 + t186 * t262 + t188 * t263;
t35 = t122 * t372 + t124 * t358 - t126 * t416 + t183 * t353 + t185 * t262 + t187 * t263;
t34 = t437 * t385 + t430 * t377 + (t409 * t438 + t460 * t480) * t400 + t474;
t33 = -t484 * t414 + t472 * t375 + (t409 * t486 + t435 * t460) * t400 + t420;
t32 = t113 * t402 + (t399 * t83 - t401 * t82) * t400;
t27 = t104 * t402 + (t399 * t77 - t401 * t76) * t400;
t26 = t103 * t402 + (t399 * t75 - t401 * t74) * t400;
t25 = t102 * t402 + (t399 * t73 - t401 * t72) * t400;
t24 = t101 * t402 + (t399 * t71 - t401 * t70) * t400;
t23 = t375 * t434 + t377 * t481 + t385 * t486 - t414 * t438 + t436;
t22 = t402 * t92 + (t399 * t67 - t401 * t66) * t400;
t21 = t402 * t91 + (t399 * t65 - t401 * t64) * t400;
t20 = t402 * t90 + (t399 * t63 - t401 * t62) * t400;
t19 = t402 * t89 + (t399 * t61 - t401 * t60) * t400;
t18 = t155 * t375 + t156 * t377 - t82 * t414 + t83 * t385 + (-t113 * t409 + t175 * t460) * t400;
t17 = t149 * t375 + t150 * t377 - t76 * t414 + t77 * t385 + (-t104 * t409 + t170 * t460) * t400;
t16 = t147 * t375 + t148 * t377 - t74 * t414 + t75 * t385 + (-t103 * t409 + t169 * t460) * t400;
t9 = t402 * t55 + (-t35 * t401 + t36 * t399) * t400;
t8 = t402 * t49 + (-t30 * t401 + t31 * t399) * t400;
t7 = t402 * t48 + (-t28 * t401 + t29 * t399) * t400;
t6 = t100 * t377 - t35 * t414 + t36 * t385 + t99 * t375 + (t121 * t460 - t409 * t55) * t400;
t5 = t100 * t301 + t121 * t353 + t299 * t99 + t35 * t355 + t357 * t36 + t372 * t55;
t2 = t115 * t353 + t299 * t96 + t30 * t355 + t301 * t97 + t31 * t357 + t372 * t49;
t1 = t114 * t353 + t28 * t355 + t29 * t357 + t299 * t94 + t301 * t95 + t372 * t48;
t10 = [0; m(3) * t230 + m(4) * t120 + m(5) * t84 + m(6) * t57 + m(7) * t43; -t7 * t495 + t8 * t496 - t24 * t495 - t19 * t495 - t21 * t495 + t25 * t496 + t22 * t496 + t20 * t496 - ((-t327 * t375 + t329 * t374 - t340 * t495 + t342 * t414 + t344 * t384) * t496 - (-t326 * t375 + t328 * t374 - t339 * t495 + t341 * t414 + t343 * t384) * t495 + (-t369 * t375 + t370 * t374 - t378 * t495 + t379 * t414 + t380 * t384) * t402) * t495 + ((-t327 * t377 - t329 * t376 + t340 * t496 - t342 * t385 + t344 * t386) * t496 - (-t326 * t377 - t328 * t376 + t339 * t496 - t341 * t385 + t343 * t386) * t495 + (-t369 * t377 - t370 * t376 + t378 * t496 - t379 * t385 + t380 * t386) * t402) * t496 + t402 * t9 + (t43 * t68 + t50 * t85 + t51 * t86) * t512 + (t108 * t80 + t109 * t81 + t57 * t93) * t513 + (t105 * t138 + t106 * t139 + t110 * t84) * t514 + t402 * t27 + t402 * t26 + t402 * t32 + (t120 * t157 + t153 * t171 + t154 * t172) * t515 + t402 * (t402 ^ 2 * t378 + (((t342 * t409 + t344 * t406) * t399 - (t341 * t409 + t343 * t406) * t401 + ((-t327 * t406 + t329 * t409) * t399 - (-t326 * t406 + t328 * t409) * t401) * qJD(2)) * t400 + (-t339 * t401 + t340 * t399 + t379 * t409 + t380 * t406 + (-t369 * t406 + t370 * t409) * qJD(2)) * t402) * t400) + 0.2e1 * m(3) * ((-t330 * t402 - t373 * t495) * (-t345 * t402 - t381 * t495) + (t331 * t402 - t373 * t496) * (t346 * t402 - t381 * t496) + (t330 * t399 + t331 * t401) * t400 * t230); m(4) * t107 + m(5) * t56 + m(6) * t44 + m(7) * t23; (t25 / 0.2e1 + t22 / 0.2e1 + t20 / 0.2e1 + t8 / 0.2e1) * t385 - (t24 / 0.2e1 + t21 / 0.2e1 + t19 / 0.2e1 + t7 / 0.2e1) * t414 + m(4) * (t107 * t157 + t117 * t172 + t118 * t171 + t120 * t173 + t153 * t204 + t154 * t203) + m(5) * (t105 * t146 + t106 * t145 + t110 * t56 + t116 * t84 + t138 * t79 + t139 * t78) + m(6) * (t108 * t53 + t109 * t52 + t111 * t81 + t112 * t80 + t44 * t93 + t57 * t98) + m(7) * (t23 * t68 + t33 * t86 + t34 * t85 + t43 * t69 + t50 * t88 + t51 * t87) + (t18 / 0.2e1 + t17 / 0.2e1 + t16 / 0.2e1 + t6 / 0.2e1 + (t168 / 0.2e1 + t160 / 0.2e1 + t162 / 0.2e1) * t377 + (t167 / 0.2e1 + t159 / 0.2e1 + t161 / 0.2e1) * t375) * t402 + (-t495 * t521 + t496 * t520 + t41) * t505 + (-t495 * t519 + t496 * t518 + t42) * t504 + ((-t32 / 0.2e1 - t26 / 0.2e1 - t27 / 0.2e1 - t9 / 0.2e1) * t409 + (t47 / 0.2e1 + (-t147 / 0.2e1 - t149 / 0.2e1 - t155 / 0.2e1) * t495 + (t148 / 0.2e1 + t150 / 0.2e1 + t156 / 0.2e1) * t496 + (t169 / 0.2e1 + t170 / 0.2e1 + t175 / 0.2e1) * t402) * t460 + t516 * t503 + t517 * t502) * t400; (-t16 - t17 - t18 - t6) * t492 + t516 * t385 - t517 * t414 + (t518 * t385 - t519 * t414 - t492 * t523 + t40) * t377 + (t520 * t385 - t521 * t414 - t492 * t524 + t39) * t375 + (t46 + (-t169 - t170 - t175) * t492 + (t148 + t150 + t156) * t385 - (t147 + t149 + t155) * t414) * t444 + (t107 * t173 + t117 * t203 + t118 * t204) * t515 + (t116 * t56 + t145 * t78 + t146 * t79) * t514 + (t111 * t52 + t112 * t53 + t44 * t98) * t513 + (t23 * t69 + t33 * t87 + t34 * t88) * t512; (m(5) + m(6) + m(7)) * t444; m(7) * (t375 * t85 + t377 * t86 - t414 * t50 + t385 * t51 + (-t409 * t43 + t460 * t68) * t400) + m(6) * (t375 * t108 + t377 * t109 - t414 * t80 + t385 * t81 + (-t409 * t57 + t460 * t93) * t400) + m(5) * (-t414 * t105 + t385 * t106 + t375 * t138 + t377 * t139 + (t110 * t460 - t409 * t84) * t400); m(7) * (t385 * t33 - t414 * t34 + t375 * t88 + t377 * t87 + (-t23 * t409 + t460 * t69) * t400) + m(6) * (t377 * t111 + t375 * t112 - t414 * t53 + t385 * t52 + (-t409 * t44 + t460 * t98) * t400) + m(5) * (t377 * t145 + t375 * t146 - t414 * t79 + t385 * t78 + (t116 * t460 - t409 * t56) * t400); 0.4e1 * (m(5) / 0.2e1 + t457) * (-t400 ^ 2 * t406 * t459 - t375 * t414 + t385 * t377); t352 * t522; m(7) * (t298 * t85 + t300 * t86 + t352 * t68 + t354 * t50 + t356 * t51 + t371 * t43) + m(6) * (t108 * t298 + t109 * t300 + t352 * t93 + t354 * t80 + t356 * t81 + t371 * t57); m(7) * (t23 * t371 + t298 * t88 + t300 * t87 + t33 * t356 + t34 * t354 + t352 * t69) + m(6) * (t111 * t300 + t112 * t298 + t352 * t98 + t354 * t53 + t356 * t52 + t371 * t44); (-t298 * t414 + t300 * t385 + t354 * t375 + t356 * t377 + (-t352 * t409 + t371 * t460) * t400) * t522; 0.4e1 * t457 * (t298 * t354 + t300 * t356 + t352 * t371); m(7) * t54; t41 * t511 + t7 * t508 + t402 * t5 / 0.2e1 + t47 * t509 + t9 * t506 + t42 * t510 + t8 * t507 + m(7) * (t119 * t43 + t151 * t51 + t152 * t50 + t54 * t68 + t58 * t86 + t59 * t85) + (t1 * t502 + t2 * t503) * t400; m(7) * (t119 * t23 + t151 * t33 + t152 * t34 + t54 * t69 + t58 * t87 + t59 * t88) + t46 * t509 + t6 * t506 + t38 * t504 + t385 * t2 / 0.2e1 + t39 * t511 + t3 * t508 + t40 * t510 + t4 * t507 + t37 * t505 - t414 * t1 / 0.2e1 + (t45 * t460 / 0.2e1 - t409 * t5 / 0.2e1) * t400; m(7) * (t151 * t377 + t152 * t375 - t59 * t414 + t58 * t385 + (t119 * t460 - t409 * t54) * t400); m(7) * (t119 * t352 + t151 * t300 + t152 * t298 + t354 * t59 + t356 * t58 + t371 * t54); t301 * t38 + t357 * t2 + t299 * t37 + t355 * t1 + t353 * t45 + t372 * t5 + (t119 * t54 + t151 * t58 + t152 * t59) * t512;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t10(1) t10(2) t10(4) t10(7) t10(11) t10(16); t10(2) t10(3) t10(5) t10(8) t10(12) t10(17); t10(4) t10(5) t10(6) t10(9) t10(13) t10(18); t10(7) t10(8) t10(9) t10(10) t10(14) t10(19); t10(11) t10(12) t10(13) t10(14) t10(15) t10(20); t10(16) t10(17) t10(18) t10(19) t10(20) t10(21);];
Mq  = res;